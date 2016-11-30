$(document).ready(function() {
  var user_address = $('#user_address').get(0);

  if (user_address) {
    var autocomplete = new google.maps.places.Autocomplete(user_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onUserPlaceChanged);
    google.maps.event.addDomListener(user_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }

  var search_address = $('#search_address').get(0);

  if (search_address) {
    var autocomplete = new google.maps.places.Autocomplete(search_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onSearchPlaceChanged);
    google.maps.event.addDomListener(search_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }

  var mission_address = $('#mission_address').get(0);

  if (mission_address) {
    var autocomplete = new google.maps.places.Autocomplete(mission_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onMissionPlaceChanged);
    google.maps.event.addDomListener(mission_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }

  var crew_address = $('#crew_address').get(0);

  if (crew_address) {
    var autocomplete = new google.maps.places.Autocomplete(crew_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onCrewPlaceChanged);
    google.maps.event.addDomListener(crew_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onUserPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#user_address').trigger('blur').val(components.address);
  $('#user_zip_code').val(components.zip_code);
  $('#user_city').val(components.city);
  if (components.country_code) {
    $('#user_country').val(components.country_code);
  }
}

function onMissionPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#mission_address').trigger('blur').val(components.address);
  $('#mission_zip_code').val(components.zip_code);
  $('#mission_city').val(components.city);
  if (components.country_code) {
    $('#mission_country').val(components.country_code);
  }
}

function onCrewPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#crew_address').trigger('blur').val(components.address);
  $('#crew_zip_code').val(components.zip_code);
  $('#crew_city').val(components.city);
  if (components.country_code) {
    $('#crew_country').val(components.country_code);
  }
}

function onSearchPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#search_address').trigger('blur').val(components.formatted_address);
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  var formated_address = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }
  formatted_address = place.formatted_address

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code,
    formatted_address: formatted_address
  };
}
