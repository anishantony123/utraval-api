pos.factory('alertService', function (Flash) {
	var alertService = {};
	alertService.triggerMessage = function(alert){
		alertService.triggerAlert(alert.title,alert.content,alert.alertType);
	}
	alertService.triggerAlert = function(title, content, alertType){
		var message = "<strong>"+title+"</strong> "+content;
        Flash.create(alertType, message, 'customAlert');
	}
	
	return alertService;
});