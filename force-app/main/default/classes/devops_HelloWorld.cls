public class devops_HelloWorld {
    
    /**
     * Method 1
     * @description: debug Product2 field values to the console log
     * - Name
     * - New Product 1
     * - New Product 2
     */
	public static void returnProductValues1(Product2 p) {
        // debug Product2 field values to console
        // Product2 Name
        System.debug('Product2 Name: ' + p.Name);
        
        // Product2 New_Product_2__c
        System.debug('Product2 New Product 2: ' + p.New_Product_2__c);
    }
    
    /**
     * Method 2
     * @description: debug Product2 field values to the console log
     * - Name
     * - New Product 1
     * - New Product 3
     */
    public static void returnProductValues2(Product2 p) {
        // debug Product2 field values to console
        // Product2 Name
        System.debug('Product2 Name: ' + p.Name);
        
        // Product2 New_Product_1__c
        System.debug('Product2 New Product 1: ' + p.New_Product_1__c);
        
        // Product2 New_Product_3__c
        System.debug('Product2 New Product 3: ' + p.New_Product_3__c);
    }
}