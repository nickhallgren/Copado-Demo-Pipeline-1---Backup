/**
 * Test class for FileUploader
 */
@isTest
public class FileUploaderTest {
    
    @isTest
    static void testUploadFile() {

        Test.startTest();

        Blob file = Blob.valueOf('Test file');
        String fileName = 'Test.txt';

        FileUploader.uploadFile(file, fileName);

        Test.stopTest();

        List<ContentVersion> cvs = [SELECT Id, ContentDocumentId FROM ContentVersion];
        System.assert(cvs.size() > 0, 'One file is expected to be uploaded to ContentVersion');
    }

    @isTest
    static void testUploadFileError() {

        Test.startTest();

        Blob file = Blob.valueOf('Test file');

        try {
            FileUploader.uploadFile(file, null);
            System.assert(false, 'It is expected that uploading a File will throw an exception since the FileName is a required field.');
        } catch (Exception e) {
            String errorMsg = e.getMessage();
            System.assert(errorMsg.contains('Required fields are missing: [Title]'), 'The FileName cannot be null.');
        }

        Test.stopTest();
    }

    @isTest
    static void testCreateContentDocumentLink() {

        Test.startTest();

        Lead lead = new Lead();
        lead.FirstName = 'Bob';
        lead.LastName = 'Steves';
        lead.Company = 'ABC';
        insert lead;

        String id;
        Blob file = Blob.valueOf('Test file');
        String fileName = 'Test.txt';

        id = FileUploader.uploadFile(file, fileName, lead.Id);
        System.debug('id-> ' + id);

        Test.stopTest();

        ContentDocumentLink cdl = [SELECT Id, LinkedEntityId FROM ContentDocumentLink WHERE Id = :id];
        System.debug('cdl-> ' + cdl);
        System.assertEquals(cdl.LinkedEntityId, lead.Id, 'The new File should be linked to the new Lead.');
    }

    @isTest
    static void testCreateContentDocumentLinkError() {

        Test.startTest();

        String recordId = '';

        Blob file = Blob.valueOf('Test file');
        String fileName = 'Test.txt';

        try {
            FileUploader.uploadFile(file, fileName, recordId);
            System.assert(false, 'It is expected that the ContentDocumentLink insert will fail since the recordId is invalid.');
        } catch (Exception e) {
            String errorMsg = e.getMessage();
            System.assert(errorMsg.contains('Invalid id: '), 'An error should be thrown since the recordId is invalid.');
        }

        Test.stopTest();
    }
}