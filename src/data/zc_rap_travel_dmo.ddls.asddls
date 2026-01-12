@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Projection View'
@Metadata.allowExtensions: true
define root view entity ZC_RAP_Travel_DMO
  provider contract transactional_query
  as projection on ZI_RAP_Travel_DMO
{
  key TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      Status,

      /* Associations */
      _Booking : redirected to composition child ZC_RAP_Booking_DMO,
      _Agency,
      _Customer,
      _Currency
}
