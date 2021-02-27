$(document).ready(function () {
	$("#avatar").click(function () {
		$.ajax({
			url: "modele/fichierAvatar.php",
			success: function (data) {
				$(this).attr("src", data);
			},
		});
	});
});
