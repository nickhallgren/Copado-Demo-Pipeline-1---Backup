/**
* @class FileUploader
* @desc Lets you upload a file in Salesforce by giving a file string of the
*   file, a name for the file, and the Id of the record that you want to attach 
*   the file to. 
*
* @example:
*   FileUploader.uploadFile(myfileString, 'Invoice.pdf', '906F0000000kG2UIAU')
*/
public class FileUploader {
    
    /**
* FileException
*/
    public class FileException extends Exception {}
    
    /**
* @method uploadFile() 
* @desc Creates a content version from a given file's file and name
* 
* @param {String} file - file string that represents the file
* @param {String} filename - full file name with extension, i.e. 'Invoice.pdf'
* @param {String} recordId - Id of the record you want to attach this file to
* 
* @return {ContentVersion} - returns the created ContentDocumentLink Id if the
*   upload was successful, otherwise returns null
*/
    public static String uploadFile(Blob file, String fileName) {
        System.debug('file--> ' + file);
        System.debug('fileName--> ' + fileName);
        String result = uploadFile(file, fileName, null);
        return result;
    }
    
    public static String uploadFile(Blob file, String filename, String recordId) {
        ContentVersion cv = createContentVersion(file, filename);
        System.debug('cv--> ' + cv);
        
        if (cv != null) {
            if (recordId != null) {
                ContentDocumentLink cdl = createContentLink(cv.Id, recordId);
                if (cdl == null) { return null; }
                return cdl.Id;
            }  else {
                return cv.Id;
            }
        } else {
            return null;
        }
    }
    
    /**
     * @method createContentVersion() [private]
     * @desc Creates a content version from a given file's file and name
     * 
     * @param {String} file - file string that represents the file
     * @param {String} filename - full file name with extension, i.e. 'Invoice.pdf'
     * 
     * @return {ContentVersion} - returns the newly created ContentVersion, or null
     *   if there was an error inserting the record
     */
    private static ContentVersion createContentVersion(Blob file, String filename) {
        ContentVersion cv = new ContentVersion();
        cv.VersionData = file;
        cv.Title = filename;
        cv.PathOnClient = filename;
        try {
            insert cv;
            return cv;
        } catch(Exception e) {
            System.debug(e);
            throw new FileException(e.getMessage());
        }
    }
    
    /**
* @method createContentLink() [private]
* @desc Creates a content link for a given ContentVersion and record
* 
* @param {String} contentVersionId - Id of the ContentVersion of the file
* @param {String} recordId - Id of the record you want to attach this file to
* 
* @return {ContentDocumentLink} - returns the newly created ContentDocumentLink, 
*   or null if there was an error inserting the record
*/
    private static ContentDocumentLink createContentLink(String contentVersionId, String recordId) {
        if (contentVersionId == null || recordId == null) { return null; }
        
        try {
            
            ContentDocumentLink cdl = new ContentDocumentLink();
            cdl.ContentDocumentId = [
                SELECT ContentDocumentId 
                FROM ContentVersion 
                WHERE Id =: contentVersionId
            ].ContentDocumentId;
            cdl.LinkedEntityId = recordId;
            // ShareType is either 'V', 'C', or 'I'
            // V = Viewer, C = Collaborator, I = Inferred
            cdl.ShareType = 'V';
            
            insert cdl;
            return cdl;
        } catch(Exception e) {
            System.debug(e);
            throw new FileException(e.getMessage());
        }
    } 
}