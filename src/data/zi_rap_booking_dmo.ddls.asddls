@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Data Model'
define view entity ZI_RAP_Booking_DMO
  as select from /dmo/booking as Booking

  association to parent ZI_RAP_Travel_DMO as _Travel     on $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Customer    as _Customer  on $projection.CustomerID = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier     as _Carrier   on $projection.CarrierID = _Carrier.AirlineID
  association [1..1] to /DMO/I_Connection  as _Connection on $projection.CarrierID    = _Connection.AirlineID
                                                          and $projection.ConnectionID = _Connection.ConnectionID
{
  key travel_id     as TravelID,
  key booking_id    as BookingID,
      booking_date  as BookingDate,
      customer_id   as CustomerID,
      carrier_id    as CarrierID,
      connection_id as ConnectionID,
      flight_date   as FlightDate,
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,

      /* Associations */
      _Travel,
      _Customer,
      _Carrier,
      _Connection
}
