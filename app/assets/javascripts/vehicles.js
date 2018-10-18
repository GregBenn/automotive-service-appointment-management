
  $(function vehicleEdit() {
    $("#vehicleEditButton").on("click", function() {
      event.preventDefault()
      $("#vehicleEditForm").show()
    })

    $('form').submit(function(event) {
      event.preventDefault()

      const values = $(this).serialize()
      const customerId = window.location.href.split("/").slice(-3)[0]
      const vehicleId = window.location.href.split("/").slice(-1)[0]
      const posting = $.post(`/customers/${customerId}/vehicles/${vehicleId}`, values)

      posting.done(function(data) {
        $("#vehicleEditForm").hide()
        $("#vehicleYear").text(data["year"])
        $("#vehicleMake").text(data["make"])
        $("#vehicleModel").text(data["model"])
        $("#vehicleMileage").text(data["mileage"])
      })
    })
  })
