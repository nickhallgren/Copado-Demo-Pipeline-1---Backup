@IsTest
public class CloneOpportunityControllerTest {

    static Integer NEXT_YEAR = System.Today().addYears(1).year();

    static String opportunityRequestJSON = '{"StageName":"Qualification","CloseDate":"' 
    + NEXT_YEAR 
    +'-02-19","Amount":900000,"Gross_Margin_Percent__c":0,"Synergy_Amount__c":0}';

    @TestSetup static void setup() {

        Account account = new Account(
            Name = 'Finastra', 
            KimbleOne__Code__c = null, 
            CurrencyIsoCode = 'USD', 
            Description = null, 
            Fax = null, 
            Phone = null, 
            Rating = 'Active', 
            Account_Segment__c = null, 
            Site = null, 
            Account_Source__c = 'Vista', 
            Type = 'Lead - Active', 
            AnnualRevenue = null, 
            ATG_VP_Delivery__c = null, 
            BillingCity = 'Paddington', 
            KimbleOne__BillingContact__c = null, 
            BillingCountry = 'United Kingdom', 
            BillingGeocodeAccuracy = null, 
            BillingLatitude = null, 
            BillingLongitude = null, 
            KimbleOne__BillingParentAccount__c = null, 
            BillingState = 'EMEA', 
            BillingStreet = null, 
            BillingPostalCode = null, 
            KimbleOne__BusinessUnit__c = null, 
            KimbleOne__BusinessUnitTradingEntity__c = null, 
            CodeZero_Legacy_Record__c = false, 
            Customer_ID__c = null, 
            CZ_AccountId__c = null, 
            Delivery_VP__c = null, 
            NumberOfEmployees = 10000, 
            ExternalID__c = null, 
            Industry = 'Finance', 
            KimbleOne__IsCustomer__c = false, 
            KimbleOne__IsInternal__c = false, 
            KimbleOne__IsSupplier__c = false, 
            Last_Close_Date__c = Date.newInstance(2020, 8, 14), 
            Market_Type__c = 'Enterprise', 
            MSA__c = false, 
            NDA__c = false, 
            OwnerId = '0050M00000Dof0vQAB', 
            Ownership = 'Other', 
            ParentId = null, 
            Partner_Domain__c = null, 
            Partnership_Tier__c = null, 
            Partnership_Type__c = null, 
            Salesforce_2019_Rep_Unknown__c = false, 
            ShippingCity = null, 
            ShippingCountry = null, 
            ShippingGeocodeAccuracy = null, 
            ShippingLatitude = null, 
            ShippingLongitude = null, 
            ShippingState = null, 
            ShippingStreet = null, 
            ShippingPostalCode = null, 
            TickerSymbol = null, 
            KimbleOne__TimePattern__c = null, 
            KimbleOne__TimePatternRule__c = null, 
            Vendor_Awareness__c = false, 
            Vertical_Market__c = 'TECHNOLOGY', 
            Website = null
        );

        insert account;

        Opportunity opportunity = new Opportunity(
            Name = 'Finastra Test', 
            A_T__c = false, 
            Account_Executive_2__c = null, 
            AccountId = account.Id,
            ACV__c = null, 
            ACV_Close_Date__c = null, 
            AIM__c = false, 
            Amount = 100000, 
            Application_Support_Offering__c = null, 
            Application_Support_Type__c = null, 
            ATG_Partners__c = 'Xactly', 
            ATG_Practice_Area__c = null, 
            ATG_RFR__c = null, 
            Billing_Rating__c = null, 
            BusinessPartner__c = null, 
            CampaignId = null, 
            Change_Order_Type__c = null, 
            Client_Fit__c = null, 
            Client_Partner__c = null, 
            Client_Partner_2__c = null, 
            Billing_Requirements__c = null, 
            CLM_Focus_Area__c = null, 
            CloseDate = Date.newInstance(NEXT_YEAR, 10, 30), 
            Closed_Done_Amount__c = null, 
            Closed_Done__c = null, 
            Closed_Past_60_Days__c = false, 
            Co_Selling_Partner_Notes__c = null, 
            Co_Selling_Partners__c = null, 
            CodeZero_Legacy_Record__c = false, 
            Cognizant_Point_of_Contact__c = null, 
            Cognizant_Point_of_Contact_2__c = null, 
            Competitors__c = null, 
            ContactId = null, 
            Contract_Owner__c = null, 
            Core_Representative_2__c = null, 
            CTS_RFR__c = null, 
            CZ_OpportunityId__c = null, 
            Data_Migration_Scoping__c = false, 
            Data_Migration_Scoping_Date__c = null, 
            Deal_Construction__c = null, 
            Deal_Desk__c = false, 
            Deal_Desk_check__c = false, 
            Deal_Desk_Date__c = null, 
            Deal_Desk_Status__c = null, 
            Deal_Desk_Tier__c = null, 
            Deal_Driver__c = null, 
            Deal_Strategy__c = null, 
            Delivery_Owner__c = null, 
            Description = 'Sample work', 
            Dev_Scoping__c = false, 
            Dev_Scoping_Date__c = null, 
            Direct_Client_Revenue__c = false, 
            End_Date__c = Date.newInstance(NEXT_YEAR, 12, 31), 
            Engagement_Type__c = null, 
            Exec_SME_Assigned__c = null, 
            Exec_SME_Needed__c = false, 
            ExternalID__c = null, 
            ForecastCategoryName = 'Pipeline', 
            Key_Revenue_Stream__c = null, 
            DashboardsGSP__Last_Stage_Change_Date__c = Date.newInstance(NEXT_YEAR, 4, 22), 
            Last_Verified_Date__c = null, 
            Lead_Sales_Partner__c = false, 
            LeadSource = 'Xactly', 
            Level_1__c = false, 
            Level_1_Date__c = null, 
            Level_2__c = false, 
            Level_2_Date__c = null, 
            Licenses__c = false, 
            Licenses2__c = null, 
            Licenses_Status__c = null, 
            Margin_Calc__c = false, 
            Margin_Calc_Date__c = null, 
            Margin_Calculator__c = false, 
            Margin_Calc_Link__c = null, 
            Milestones__c = null, 
            MNDA_Signed__c = false, 
            MNDA_Signed_Date__c = null, 
            Monetization_Ecosystem_Area__c = 'Sales Performance Management', 
            MSA_Owner__c = null, 
            MSA_Signed__c = false, 
            MSA_Signed_Date__c = null, 
            NextStep = null, 
            Next_Step_Due_Date__c = Date.newInstance(NEXT_YEAR, 8, 17), 
            Next_Steps_Long_Text__c = 'Sync with Will in August if he has heard anything back about project.', 
            CurrencyIsoCode = 'USD',  
            Opportunity_SOW_Status__c = null, 
            Opportunity_Stage_Date_Change__c = null, 
            Opportunity_Type__c = null, 
            Opportunity_Updates__c = 'updates', 
            Partner_Lead__c = null, 
            Partner_LOE__c = null, 
            Partner_Revenue__c = false, 
            Pre_Existing__c = false, 
            Pricebook2Id = null, 
            Probability = 10, 
            Product_Being_Replaced__c = null, 
            Product_Other__c = null, 
            Products_Involved__c = null, 
            Project_Description__c = null, 
            Project_ID__c = null, 
            Project_Type__c = 'Implementation', 
            Proposal__c = null, 
            Proposal_Creation__c = false, 
            Proposal_Creation_Date__c = null, 
            Referring_Partner__c = null, 
            Region__c = 'UK&I', 
            Regional_Vice_President_2__c = null, 
            Renewal_Opportunity__c = false, 
            Renewal_Period__c = null, 
            Request_Notes__c = null, 
            Resource_Requirements__c = null, 
            Revenue_Source__c = null, 
            Review_Team_Member__c = null, 
            Sales_to_Delivery_Hand_off__c = false, 
            Sales_to_Delivery_Handoff_Date__c = null, 
            Salesforce_Opportunity_Name__c = null, 
            Saved_Implementation__c = false, 
            Scope__c = null, 
            SE_Action__c = 'Qualification', 
            SE_Active__c = false, 
            SE_Assignment_Date__c = Date.newInstance(NEXT_YEAR, 4, 22), 
            Priority__c = null, 
            SE_Fit_Description__c = null, 
            SE_High_Priority__c = false, 
            SE_Next_Step__c = null, 
            SE_Notes__c = null, 
            SE_Proposal_Completed_Date__c = null, 
            SE_SOW_Completion_Date__c = null, 
            SE_Status__c = null, 
            SE_Tasks__c = null, 
            SF_AE__c = null, 
            SOW__c = null, 
            SOW_Completed__c = false, 
            SOW_Creation__c = false, 
            SOW_Creation_Date__c = null, 
            SOW_Number__c = '003', 
            SOW_sent_via_DocuSign__c = false, 
            SOW_sent_via_DocuSign_Date__c = null, 
            SOW_Signed__c = false, 
            SOW_Signed_Date__c = null, 
            Staffing_Request_Sent__c = false, 
            Staffing_Request_Sent_Date__c = null, 
            StageName = 'Qualification', 
            Start_Date__c = Date.newInstance(NEXT_YEAR, 11, 2), 
            StartDateConfidence__c = null, 
            Strategy_Priority__c = null, 
            Synergy_checkbox__c = false, 
            Synergy_Amount__c = null, 
            Synergy_Source__c = null, 
            Weekly_SE_Allocation__c = null, 
            Win_Zone_ID__c = null, 
            WinZone_Service_Line_Verfied__c = false, 
            Year__c = String.valueOf(NEXT_YEAR)
        );
        insert opportunity;

    }

    @IsTest
    private static void saveClonedOpportunityTest() {
        
        System.debug('opportunityRequestJSON ' + opportunityRequestJSON);
        Opportunity existingOpp = [
            SELECT Id
            FROM Opportunity
            LIMIT 1
        ];

        Test.startTest();
        try {
            CloneOpportunityController.saveClonedOpportunity(existingOpp.Id, opportunityRequestJSON);
        } catch (Exception e) {
            System.debug(e);
        }
        Test.stopTest();

        List<Opportunity> oppList = [
            SELECT Id, Amount, CloseDate
            FROM Opportunity
            WHERE Amount = 900000
        ];

        System.assertEquals(1, oppList.size());

    }

}