/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class OutboundInterfaceRunWebService {
    global OutboundInterfaceRunWebService() {

    }
    webService static KimbleOne.OutboundInterfaceRunWebService.ExportRun CreateExportWithId(String interfaceTypeId, String exportId, List<KimbleOne.OutboundInterfaceRunWebService.SearchCriteria> criteria, Boolean runImmediately) {
        return null;
    }
    webService static KimbleOne.OutboundInterfaceRunWebService.ExportRun CreateExport(String interfaceTypeId, List<KimbleOne.OutboundInterfaceRunWebService.SearchCriteria> criteria, Boolean runImmediately) {
        return null;
    }
    webService static KimbleOne.OutboundInterfaceRunWebService.ExportRun GetExport(String runId) {
        return null;
    }
global class Dictionary {
    webService String Name {
        get;
        set;
    }
    webService String Value {
        get;
        set;
    }
}
global class ExportLine {
    webService List<KimbleOne.OutboundInterfaceRunWebService.Dictionary> Values {
        get;
        set;
    }
}
global class ExportRun {
    webService String Id {
        get;
        set;
    }
    webService List<KimbleOne.OutboundInterfaceRunWebService.InterfaceMapExport> InterfaceMapExports {
        get;
        set;
    }
}
global class InterfaceMapExport {
    webService String InterfaceMapId {
        get;
        set;
    }
    webService List<KimbleOne.OutboundInterfaceRunWebService.ExportLine> TheLines {
        get;
        set;
    }
}
global class SearchCriteria {
    webService String Name {
        get;
        set;
    }
    webService List<String> Values {
        get;
        set;
    }
    global SearchCriteria() {

    }
}
}
