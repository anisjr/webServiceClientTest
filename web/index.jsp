<%-- 
    Document   : index
    Created on : 1 avr. 2015, 11:49:28
    Author     : mouadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	HomeAutomationWSclient.DeviceServiceImplService service = new HomeAutomationWSclient.DeviceServiceImplService();
	HomeAutomationWSclient.DevicesService port = service.getDeviceServiceImplPort();
	// TODO process result here
	HomeAutomationWSclient.ArrayList result = port.getAllDevices();
	out.println("Result = "+result);
        
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	HomeAutomationWSclient.DeviceServiceImplService service = new HomeAutomationWSclient.DeviceServiceImplService();
	HomeAutomationWSclient.DevicesService port = service.getDeviceServiceImplPort();
	 // TODO initialize WS operation arguments here
	long deviceID = 0L;
	int value = 0;
	// TODO process result here
	boolean result = port.setValue(deviceID, value);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    
    
    <%-- start web service invocation --%><hr/>
    <%
    try {
	HomeAutomationWSclient.DeviceServiceImplService service = new HomeAutomationWSclient.DeviceServiceImplService();
	HomeAutomationWSclient.DevicesService port = service.getDeviceServiceImplPort();
	 // TODO initialize WS operation arguments here
	long deviceID = 0L;
	// TODO process result here
	int result = port.getValue(deviceID);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
