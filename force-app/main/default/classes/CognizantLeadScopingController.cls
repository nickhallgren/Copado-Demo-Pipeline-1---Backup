public class CognizantLeadScopingController {
    
    /**
     * Custom Exception
     */    
    public class LeadException extends Exception {}
    
    public Boolean showThankYou { get; set; }
    public Lead lead { get; set; }
    public Blob file1 { get; set; }
    public String fileName1 { get; set; }
    public Blob file2 { get; set; }
    public String fileName2 { get; set; }
    public Blob file3 { get; set; }
    public String fileName3 { get; set; }
    public ApexPages.StandardController cont { get; set; }
    
    public CognizantLeadScopingController() {
        showThankyou = false;
    	// lead = new Lead();
    }
    
    public CognizantLeadScopingController(ApexPages.StandardController controller) {
        cont = controller;
        lead = (Lead)cont.getrecord();
    }
       
    public PageReference save() {
        
        try {
            processLead();
            showThankyou = true;
        } catch(Exception e) {
            ApexPages.addMessages(e);
            return null;
        }
        
        lead = null;
        //  After successful Save, navigate to the default view page
        PageReference redirectSuccess = new PageReference('/apex/CognizantLeadScopingThankYou');
        return (redirectSuccess);
    }
    
    private void processLead() {

        try {
            // Insert Lead
            insert lead;
        } catch (Exception e) {
            String errorMsg = e.getMessage();
            System.debug('errorMsg--> ' + errorMsg);
            throw new LeadException(errorMsg);
        }

        if (file1 != null) {
        	uploadFile(file1, fileName1, lead.Id);
        }
        
        if (file2 != null) {
        	uploadFile(file2, fileName2, lead.Id);
        }
        
         if (file3 != null) {
        	uploadFile(file3, fileName3, lead.Id);
        }
        
        // TODO: to add a third file, add a new get/set for File3 on Controller. Add new if (file3==null) on controller. Add third inputFile3 on VF Page.
    }
    
    @testVisible
    private void uploadFile(Blob file, String fileName, Id leadId) {
        try {
            // upload file and link to new lead
            FileUploader.uploadFile(file, fileName, (String)leadId);
        } catch (Exception e) {
            String errorMsg = e.getMessage();
            System.debug('errorMsg--> ' + errorMsg);
            throw new LeadException(errorMsg);
        }
    }
}