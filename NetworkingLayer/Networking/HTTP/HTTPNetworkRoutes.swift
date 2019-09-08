//
//  HTTPNetworkRoutes.swift
//  NetworkingLayer
//
//  Created by Sohrab on 08/09/2019.
//  Copyright © 2019 Sohrab. All rights reserved.
//

/*
 https://gateway.dubailand.gov.ae/rentalindex/GetMainAreas?requestedLanguage=en
 https://gateway.dubailand.gov.ae/rentalindex/GetResidentialTypes?requestedLanguage=en
 https://gateway.dubailand.gov.ae/rentalindex/GetResidentialSubAreas?requestedLanguage=en&mainAreaID=2&residentialType=1
 https://gateway.dubailand.gov.ae/rentalindex/GetResidentialRooms?requestedLanguage=en&mainAreaID=2&residentialType=1&subAreaID=1&tenancyContractExpiryDate=09/08/2019
 https://gateway.dubailand.gov.ae/rentalindex/PerformResidentialCalculation?requestedLanguage=en&mainAreaID=2&subAreaID=1&selectedSubAreaName=Al Badaa&tenancyContractExpiryDate=09/08/2019&currentRentAmount=450000&residentalType=1&selectedResidentalRoomType=Studio&selectedResidentalRoomTypeName=Studio
 */

// You can add as many routes & endpoints

import UIKit

public enum HTTPNetworkRoute: String {
    case getMainAreas                   = "rentalindex/GetMainAreas"
    case getResidentialAreas            = "rentalindex/GetResidentialTypes"
    case getResidentialSubAreas         = "rentalindex/GetResidentialSubAreas"
    case getResidentialRooms            = "rentalindex/GetResidentialRooms"
    case performResidentialCalculation  = "rentalindex/PerformResidentialCalculation"
}
