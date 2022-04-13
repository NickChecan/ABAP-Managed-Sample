@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Book view artifact'

@UI: {
    headerInfo: {
        typeName: 'Book',
        typeNamePlural: 'Books',
        title: { type: #STANDARD, value: 'Name' }
    }
}
@Search.searchable: true
define root view entity ZNC_BOOK_CDS as select from znc_book_data {
    
    @UI.facet: [ 
        { 
            id: 'Plant',
            purpose:         #STANDARD,
            type:            #IDENTIFICATION_REFERENCE,
            label:           'Name',
            position:        10 
        } 
    ]
    @UI: {
        lineItem:       [ { position: 10, importance: #HIGH } ],
        identification: [ { position: 10, label: 'Name' } ] 
    }
    @Search.defaultSearchElement: true
    key name as Name,
    
    @UI: {
        lineItem:       [ { position: 20, importance: #HIGH } ],
        identification: [ { position: 20, label: 'Type' } ] 
    }
    @Search.defaultSearchElement: true
    type as Type,
    
    @UI: {
        lineItem:       [ { position: 30, importance: #HIGH } ],
        identification: [ { position: 30, label: 'Price' } ] 
    }
    price as Price
    
}
