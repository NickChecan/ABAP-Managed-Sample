@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Book view artifact'
define root view entity ZNC_BOOK_CDS as select from znc_book_data {
    
    key name as Name,
    
    price as Price
    
}
