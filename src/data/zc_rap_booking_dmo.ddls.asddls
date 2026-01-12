@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Projection View'
@Metadata.allowExtensions: true
define view entity ZC_RAP_Booking_DMO
  as projection on ZI_RAP_Booking_DMO
{
  key TravelID,
  key BookingID,
      BookingDate,
      CustomerID,
      CarrierID,
      ConnectionID,
      FlightDate,
      FlightPrice,
      CurrencyCode,

      /* Associations */
      _Travel : redirected to parent ZC_RAP_Travel_DMO,
      _Customer,
      _Carrier,
      _Connection
}
