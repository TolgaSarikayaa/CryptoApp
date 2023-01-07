//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Tolga Sarikaya on 23.12.22.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencylist : [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencylist.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencylist[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}

struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
    
    var name: String {
        return self.cryptoCurrency.currency
        
    }
    
    var price : String {
        return self.cryptoCurrency.price
    }
}
