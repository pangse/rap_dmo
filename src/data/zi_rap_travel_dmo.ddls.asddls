@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Data Model'
define root view entity ZI_RAP_Travel_DMO
  as select from /dmo/travel as Travel

  composition [0..*] of ZI_RAP_Booking_DMO as _Booking

  association [0..1] to /DMO/I_Agency   as _Agency   on $projection.AgencyID = _Agency.AgencyID
  association [0..1] to /DMO/I_Customer as _Customer on $projection.CustomerID = _Customer.CustomerID
  association [0..1] to I_Currency      as _Currency on $projection.CurrencyCode = _Currency.Currency

{
  key travel_id     as TravelID,
      agency_id     as AgencyID,
      customer_id   as CustomerID,
      begin_date    as BeginDate,
      end_date      as EndDate,
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,

      /* Associations */
      _Booking,
      _Agency,
      _Customer,
      _Currency
}
