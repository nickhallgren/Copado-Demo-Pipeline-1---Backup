import { LightningElement, api, track } from "lwc";
import NAME_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.Name";
import FUELTYPE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelType";
import FUELCONSUMPTION_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelConsumption";
import FUELCONSUMPTIONUNIT_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelConsumptionUnit";
import STARTDATE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.StartDate";
import ENDDATE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.EndDate";
import COMMENTS_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.Comments__c";
import ENVRSRCID_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.StnryAssetEnvrSrcId";
import REVIEW_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.I_have_reviewed_all_fields_and_data__c";
import ALLOCATEDRENEWABLEENERGY_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.AllocatedRenewableEnergyInKwh";
import RENEWABLEENERGYTYPE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.RenewableEnergyType";
import NZCRENEWABLEENERGYTYPE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.NZC_Renewable_Energy_Type_Override__c";
import REFRIGERANTEMISSIONSFACTOR_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.RefrigerantEmssnFctrId";
import DECLARATION from "@salesforce/schema/StnryAssetEnrgyUse.I_have_reviewed_all_fields_and_data__c";
import MONTH_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.NZC_Month__c";
import CREATEDBYAUTOMATION_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.NZC_Created_by_Automation__c";
import NZC_Energy_Use_Name from "@salesforce/label/c.NZC_Energy_Use_Name";
import NZC_Attach_Receipt from "@salesforce/label/c.NZC_Attach_Receipt";
import NZC_Fuel_Consumption from "@salesforce/label/c.NZC_Fuel_Consumption";
import NZC_Consumption_Unit from "@salesforce/label/c.NZC_Consumption_Unit";
import NZC_Start_Date from "@salesforce/label/c.NZC_Start_Date";
import NZC_End_Date from "@salesforce/label/c.NZC_End_Date";
import NZC_Comments from "@salesforce/label/c.NZC_Comments";
import NZC_Refrigerant_Emissions_Type from "@salesforce/label/c.NZC_Refrigerant_Emissions_Type";
import NZC_Renewable_Not_Applicable from "@salesforce/label/c.NZC_Renewable_Not_Applicable";
import NZC_Allocated_Renewable_Energy from "@salesforce/label/c.NZC_Allocated_Renewable_Energy";
import NZC_Renewable_Energy_Type from "@salesforce/label/c.NZC_Renewable_Energy_Type";
import NZC_Attach_Receipt_for_Renewable from "@salesforce/label/c.NZC_Attach_Receipt_for_Renewable";
import NZC_File_Error_Msg from "@salesforce/label/c.NZC_File_Error_Msg";
import NZC_Months_Picklist from "@salesforce/label/c.NZC_Months_Picklist";
import NZC_Month_Label from "@salesforce/label/c.NZC_Month_Label";
import NZC_Field_rangeOverFlowError from "@salesforce/label/c.NZC_Field_rangeOverFlowError";
export default class CreateEnergyUseRecordsChild extends LightningElement {
  label = {
    NZC_Energy_Use_Name,
    NZC_Attach_Receipt,
    NZC_Fuel_Consumption,
    NZC_Consumption_Unit,
    NZC_Start_Date,
    NZC_End_Date,
    NZC_Comments,
    NZC_Refrigerant_Emissions_Type,
    NZC_Renewable_Not_Applicable,
    NZC_Allocated_Renewable_Energy,
    NZC_Renewable_Energy_Type,
    NZC_Attach_Receipt_for_Renewable,
    NZC_File_Error_Msg,
    NZC_Months_Picklist,
    NZC_Month_Label,
    NZC_Field_rangeOverFlowError
  };
  @api recordIdFromParent;
  @api declarationAccept;
  @api showFileError = false;
  @api showRenFileError = false;
  @api fuelTypeDetails;
  quantity = 0;
  uomSelected = "";
  renTypeSelected = "";
  renEnergy = 0;
  fileUploadedName = [];
  documentIdOfUploadedFile = [];
  renFileUploadedName = [];
  renDocumentIdOfUploadedFile = [];
  @api disableRenewable = false;
  recordName;
  @api disableAll = false;
  @track disableForToBeEstimated = true; //Created New Variable as part of BAU Release 3 CR1
  disableRenewable = false;
  startDateValue = "";
  endDateValue = "";
  commentValue = "";
  applicabilityValue = "Applicable";
  energyUse = {};
  renEnergyValueAllowed = "";
  refEmissionFactorIdFromApex = "";
  monthSelected = "";
  @api
  getShowRenewablePart() {
    return this.fuelTypeDetails.showNotApplicableForRenewable;
  }
  @api
  getcurrentFileUploadedName() {
    return this.fileUploadedName;
  }
  @api
  getcurrentRenFileUploadedName() {
    return this.renFileUploadedName;
  }
  @api
  getcurrentApplicabilityValue() {
    return this.applicabilityValue;
  }
  get enableRenewablePart() {
    if (this.fuelTypeDetails.showNotApplicableForRenewable == "true") {
      return true;
    } else if (this.fuelTypeDetails.showNotApplicableForRenewable == "false") {
      return false;
    }
  }
  get fuelTypeIsRefrigerant() {
    if (this.fuelTypeDetails.fuelType == "Refrigerant") {
      return true;
    } else {
      return false;
    }
  }
  get fuelTypeIsElectricity() {
    if (this.fuelTypeDetails.fuelType == "Electricity") {
      return true;
    } else {
      return false;
    }
  }
  get showSectionfinal() {
    if (this.fuelTypeDetails.isSectionOpen == "true") {
      return this.fuelTypeDetails.FuelTypeAccordionLabel;
    }
  }
  get applicabilityOptions() {
    var appList = this.fuelTypeDetails.ApplicabilityValues.split(",");
    var optList = [];
    appList.forEach((element) => {
      var app = { label: element, value: element };
      optList.push(app);
    });
    // console.log("app list", optList);
    return optList;
  }
  get uom_Options() {
    var uomList = this.fuelTypeDetails.uOMOptions.split(",");
    var optionsList = [];
    uomList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }
  get month_Options() {
    var monthList = NZC_Months_Picklist.split(",");
    var optionsList = [];
    monthList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }
  get ret_Options() {
    var retList = this.fuelTypeDetails.refrigerantEmissionsFactor.split(",");
    var optionsListRET = [];
    retList.forEach((element) => {
      var obj = { label: element, value: element };
      optionsListRET.push(obj);
    });
    return optionsListRET;
  }
  get ren_Energy_Type_Options() {
    var retoList = this.fuelTypeDetails.renewableEnergyType.split(",");
    var optionsList = [];
    retoList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }
  get disableForRenComponents() {
    if (this.disableAll == true) {
      return true; //disabled
    } else if (this.disableAll == false && this.disableRenewable == true) {
      return true;
    } else {
      return false;
    }
  }
  //onchange method for file upload
  handleTopFileUpload(event) {
    // console.log("fileupload detail", event.detail.files[0].name);
    for(let i=0;i<event.detail.files.length;i++){
      this.fileUploadedName.push(event.detail.files[i].name);
      this.documentIdOfUploadedFile.push(event.detail.files[i].documentId); 
    }
    // this.fileUploadedName = event.detail.files[0].name;
    // this.documentIdOfUploadedFile = event.detail.files[0].documentId;
    // console.log('names of files : ',this.fileUploadedName);
    // console.log('iDs of files : ',this.documentIdOfUploadedFile); 
    if (this.fileUploadedName != "") {
      this.showFileError = false;
    }
    // this.handleAnyValueChange();
  }
  //onchange method for renewable file upload
  handleRenewableFileUpload(event) {
    // console.log("fileupload detail ren", event.detail.files[0].name);
    for(let i=0;i<event.detail.files.length;i++){
      this.renFileUploadedName.push(event.detail.files[i].name);
      this.renDocumentIdOfUploadedFile.push(event.detail.files[i].documentId); 
    }
    if (this.renFileUploadedName != "") {
      this.showRenFileError = false;
    }
    // this.handleAnyValueChange();
  }
  //onchange method for applicability input
  handleApplicabilityChange(event) {
    this.applicabilityValue = event.target.value;
    // Reset month and date values when applicability changes
    this.monthSelected = null;
    this.month = null;
    this.startDateValue = null;
    this.endDateValue = null;
    // If you store these separately
    this.startDate = null;
    this.endDate = null;
    // Your existing logic for disabling sections
    /*if (this.applicabilityValue === "Applicable") {
        this.disableAll = false;
        this.disableForToBeEstimated = true;
    } else if (this.applicabilityValue === "To be Estimated"  ) {
        this.disableAll = true;
        this.disableForToBeEstimated = false;
    } else if (this.applicabilityValue === "Not Applicable") {
        this.disableAll = true;
        this.disableForToBeEstimated = false;
    }else if (this.applicabilityValue === "To be Confirmed"){
      this.disableAll = true;
      this.disableForToBeEstimated = true;
    }*/
      if (this.applicabilityValue === "Applicable") {
        this.disableAll = false;
        this.disableForToBeEstimated = true; // Ensure it's hidden for "Applicable"
      } else if (this.applicabilityValue === "Not Applicable"){
        this.disableAll = true;
        this.disableForToBeEstimated = false; // Enable fields specific to "To Be Estimated"
        this.fileUploadedName =[];
        this.renFileUploadedName =[];
        this.documentIdOfUploadedFile =[];
        this.renDocumentIdOfUploadedFile =[];
      }else if (this.applicabilityValue === "To be Estimated"){
        this.disableAll = true;
        this.disableForToBeEstimated = false; // Enable fields specific to "To Be Estimated"
        this.fileUploadedName =[];
        this.renFileUploadedName =[];
        this.documentIdOfUploadedFile =[];
        this.renDocumentIdOfUploadedFile =[];
      }
      else{
        this.disableAll = true;
        this.disableForToBeEstimated = true;
        this.fileUploadedName =[];
        this.renFileUploadedName =[];
        this.documentIdOfUploadedFile =[];
        this.renDocumentIdOfUploadedFile =[];
      }
  
    
}
  //onchange method for checkbox to enable/disable renewable section
  handleRenewableCheckboxChange(evt) {
    //console.log("inside renewable checkbox", evt.target.checked);
    if (evt.target.checked == true) {
      this.disableRenewable = true;
    } else {
      this.disableRenewable = false;
    }
    // this.handleAnyValueChange();
  }
  //onchange method for fuel consumption input
  handleUOMChange(event) {
    //console.log("uom", event.detail.value);
    this.uomSelected = event.target.value;
    //console.log('came here 4');
    if ((this.fuelTypeIsElectricity == true) & (this.quantity != "")) {
      this.validateRenEnergy();
    }
  }
  //method for validating the renewable energy values in the form
  validateRenEnergy() {
    let renEnergyElement = this.template.querySelector(".renEnergy");
    //console.log('renEnergyElement.value',renEnergyElement.value);
    if (this.uomSelected == "MWh") {
      this.renEnergyValueAllowed = (1000 * parseFloat(this.quantity));
    } else if (this.uomSelected == "kWh") {
      this.renEnergyValueAllowed = parseFloat(this.quantity);
    }
    if (renEnergyElement.value) {
      if (parseFloat(renEnergyElement.value) > parseFloat(this.renEnergyValueAllowed)) {
        renEnergyElement.setCustomValidity(this.label.NZC_Field_rangeOverFlowError);
      } else {
        renEnergyElement.setCustomValidity('');
      }
      renEnergyElement.reportValidity();
    }
  }
  //onchange method for month input
  handleMonthChange(event) {
    this.monthSelected = event.target.value;
    if ( this.applicabilityValue === "Applicable" 
      || this.applicabilityValue === "Not Applicable" 
      || this.applicabilityValue === "To be Estimated") {
        const monthMap = {
            January: 0,
            February: 1,
            March: 2,
            April: 3,
            May: 4,
            June: 5,
            July: 6,
            August: 7,
            September: 8,
            October: 9,
            November: 10,
            December: 11
        };
        const selectedMonthIndex = monthMap[this.monthSelected];
        const today = new Date();
        const currentMonthIndex = today.getMonth();
        let year = today.getFullYear();
        if (selectedMonthIndex > currentMonthIndex) {
            year = year - 1;
        }
        const startDate = new Date(year, selectedMonthIndex, 1);
        const endDate = new Date(year, selectedMonthIndex + 1, 0);
        // Format date without UTC conversion
        const formatDate = (date) => {
            const y = date.getFullYear();
            const m = String(date.getMonth() + 1).padStart(2, "0");
            const d = String(date.getDate()).padStart(2, "0");
            return `${y}-${m}-${d}`;
        };
        this.startDateValue = formatDate(startDate);
        this.endDateValue = formatDate(endDate);
    }
}
  //onchange method for renewable type input
  handleRenEnergyTypeChange(event) {
    console.log("ren energy type", event.detail.value);
    this.renTypeSelected = event.target.value;
    console.log('ren type selected', this.renTypeSelected);
    // this.handleAnyValueChange();
  }
  //onchange method for renewable allocated energy input
  handleAllocatedEnergyChange(event) {
    // console.log("allocated energy", event.target.value);
    this.renEnergy = event.target.value;
    this.validateRenEnergy();
    // this.handleAnyValueChange();
  }
  //onchange method for fuel consumption input
  handleQuantityChange(event) {
    // console.log("quantity", event.target.value);
    this.quantity = event.target.value;
    //console.log('type of this.quantity ', typeof(this.quantity));
    if ((this.fuelTypeIsElectricity == true) & this.quantity != '' & this.uomSelected != '') {
      this.validateRenEnergy();
    }
  }
  //onchange method for start date input
  handleStartDateChange(event) {
    //console.log('start date',event.target.value);
    this.startDateValue = event.target.value;
    // console.log("start date value", this.startDateValue);
  }
  //onchange method for end date input
  handleEndDateChange(event) {
    //console.log('end date',event.target.value);
    this.endDateValue = event.target.value;
    // console.log("end date value", this.endDateValue);
  }
  //onchange method for comment input
  handleCommentChange(event) {
    //console.log('comment',event.target.value);
    this.commentValue = event.target.value;
    // console.log("comment value", this.commentValue);
  }
  //onchange method for name input
  handleNameChange(event) {
    this.recordName = event.target.value;
  }
  //checking if the inputs are valid
  @api
  isInputValid() {
    let isValid = true;
    if (this.applicabilityValue == "Applicable" || this.applicabilityValue == "To be Estimated") {
      let inputFields = this.template.querySelectorAll(".validate");
      inputFields.forEach((inputField) => {
        if (!inputField.checkValidity()) {
          inputField.reportValidity();
          isValid = false;
        }
        this.energyUse[inputField.name] = inputField.value;
      });
    }
   
    // console.log('inside child js');
    // console.log("applicabilityValue", this.applicabilityValue);
    return isValid;
  }
  
  //returning a promise with all the data of child component to parent component
  @api
  handleCreateEnergyUseRecords() {
    //console.log(this.uniqueStamp + "line 250 in child");
    return new Promise((resolve, reject) => {
      var energyUseWrapper = {};
      var fields = {};
        fields[NAME_FIELD.fieldApiName] = this.recordName;
        fields[FUELTYPE_FIELD.fieldApiName] = this.fuelTypeDetails.fuelType;
        fields[FUELCONSUMPTION_FIELD.fieldApiName] = this.quantity;
        fields[FUELCONSUMPTIONUNIT_FIELD.fieldApiName] = this.uomSelected;
        fields[STARTDATE_FIELD.fieldApiName] = this.startDateValue;
        fields[ENDDATE_FIELD.fieldApiName] = this.endDateValue;
        fields[COMMENTS_FIELD.fieldApiName] = this.commentValue;
        fields[ENVRSRCID_FIELD.fieldApiName] = this.recordIdFromParent;
        fields[MONTH_FIELD.fieldApiName] = this.monthSelected;
        fields[REVIEW_FIELD.fieldApiName] = true;
        fields[ALLOCATEDRENEWABLEENERGY_FIELD.fieldApiName] = this.renEnergy;
        console.log('renTypeSelected : ', this.renTypeSelected);
        if(this.renTypeSelected === "Green Tariff"){
          console.log('inside green tariff');
          fields[NZCRENEWABLEENERGYTYPE_FIELD.fieldApiName] = this.renTypeSelected;
          fields[RENEWABLEENERGYTYPE_FIELD.fieldApiName] = "Solar";
        } else {
          console.log('inside else part');
          fields[RENEWABLEENERGYTYPE_FIELD.fieldApiName] = this.renTypeSelected;
        }
        fields[REFRIGERANTEMISSIONSFACTOR_FIELD.fieldApiName] = this.fuelTypeDetails.refrigerantEmissionsFactor;
        fields[DECLARATION.fieldApiName] = this.declarationAccept;
        fields[CREATEDBYAUTOMATION_FIELD.fieldApiName] = true;
        
        energyUseWrapper['energyUseRecord'] = fields;
        energyUseWrapper['fileDocumentId'] = this.documentIdOfUploadedFile + ',' + this.renDocumentIdOfUploadedFile;
        energyUseWrapper['applicabilityValue'] = this.applicabilityValue;
        if(!this.fuelTypeDetails.FuelTypeAccordionLabel.includes('Refrigerant')){
           energyUseWrapper['fuelTypeLabel'] = this.fuelTypeDetails.FuelTypeAccordionLabel;
        }
        else{
          energyUseWrapper['fuelTypeLabel'] = 'Refrigerant';
        }
        
        //console.log('wrapper in child component are ' + JSON.stringify(energyUseWrapper));
        resolve(energyUseWrapper);
    });
  }
 
}