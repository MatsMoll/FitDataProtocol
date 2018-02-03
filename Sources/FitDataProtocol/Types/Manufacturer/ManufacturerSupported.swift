//
//  ManufacturerSupported.swift
//  FitDataProtocol
//
//  Created by Kevin Hoogheem on 1/29/18.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

@available(swift 4.0)
public extension Manufacturer {

    public static var supportedManufacturers: [Manufacturer] = {

        allManufacturers.append(.unknown)
        allManufacturers.append(.development)
        allManufacturers.append(.garmin)
        allManufacturers.append(.garminFR405)
        allManufacturers.append(.zephyr)
        allManufacturers.append(.dayton)
        allManufacturers.append(.idt)
        allManufacturers.append(.srm)
        allManufacturers.append(.quarq)
        allManufacturers.append(.iBike)
        allManufacturers.append(.saris)
        allManufacturers.append(.spartHK)
        allManufacturers.append(.tanita)
        allManufacturers.append(.echowell)
        allManufacturers.append(.dynastreamOem)
        allManufacturers.append(.nautilus)
        allManufacturers.append(.timex)
        allManufacturers.append(.metrigear)
        allManufacturers.append(.xelic)
        allManufacturers.append(.beurer)
        allManufacturers.append(.aAndD)
        allManufacturers.append(.hmm)
        allManufacturers.append(.suunto)
        allManufacturers.append(.thitaElektronik)
        allManufacturers.append(.gPulse)
        allManufacturers.append(.cleanMobile)
        allManufacturers.append(.pedalBrain)
        allManufacturers.append(.peaksware)
        allManufacturers.append(.saxonar)
        allManufacturers.append(.lemondFitness)
        allManufacturers.append(.dexcom)
        allManufacturers.append(.wahooFitness)
        allManufacturers.append(.octaneFitness)
        allManufacturers.append(.archinoetics)
        allManufacturers.append(.theHurtBox)
        allManufacturers.append(.citizenSystems)
        allManufacturers.append(.magellan)
        allManufacturers.append(.osynce)
        allManufacturers.append(.holux)
        allManufacturers.append(.concept2)

        allManufacturers.append(.oneGiantLeap)
        allManufacturers.append(.aceSensor)
        allManufacturers.append(.brimBrothers)
        allManufacturers.append(.xplova)
        allManufacturers.append(.perceptionDigital)
        allManufacturers.append(.bf1Systems)
        allManufacturers.append(.pioneer)
        allManufacturers.append(.spantec)
        allManufacturers.append(.metalogics)
        allManufacturers.append(.fouriii)
        allManufacturers.append(.seikoEpson)
        allManufacturers.append(.seikoEpsonOem)
        allManufacturers.append(.iForPowell)
        allManufacturers.append(.maxwellGuider)
        allManufacturers.append(.starTrac)
        allManufacturers.append(.breakaway)
        allManufacturers.append(.alatechTechnology)
        allManufacturers.append(.mioTechnologyEurope)
        allManufacturers.append(.rotor)
        allManufacturers.append(.geonaute)
        allManufacturers.append(.idBike)
        allManufacturers.append(.specialized)
        allManufacturers.append(.wTek)
        allManufacturers.append(.physicalEnterprises)
        allManufacturers.append(.northPoleEngineering)
        allManufacturers.append(.bKool)
        allManufacturers.append(.cateye)
        allManufacturers.append(.stagesCycling)
        allManufacturers.append(.sigmaSport)
        allManufacturers.append(.tomTom)
        allManufacturers.append(.peripedal)
        allManufacturers.append(.wattBike)

        allManufacturers.append(.moxy)
        allManufacturers.append(.cicloSport)
        allManufacturers.append(.powerBahn)
        allManufacturers.append(.acornProjectAps)
        allManufacturers.append(.lifeBeam)
        allManufacturers.append(.bontrager)
        allManufacturers.append(.wellgo)
        allManufacturers.append(.scosche)
        allManufacturers.append(.magura)
        allManufacturers.append(.woodway)
        allManufacturers.append(.elite)
        allManufacturers.append(.nielsenKellerman)
        allManufacturers.append(.dkCity)
        allManufacturers.append(.tacx)
        allManufacturers.append(.directionTechnology)
        allManufacturers.append(.magtonic)
        allManufacturers.append(.onePartCarbon)
        allManufacturers.append(.insideRide)
        allManufacturers.append(.soundOfMotion)
        allManufacturers.append(.stryd)
        allManufacturers.append(.indoorCyclingGroup)
        allManufacturers.append(.miPulse)
        allManufacturers.append(.bsxAthletics)
        allManufacturers.append(.look)
        allManufacturers.append(.campagnolo)
        allManufacturers.append(.bodyBikeSmart)
        allManufacturers.append(.praxisworks)
        allManufacturers.append(.limitsTechnology)
        allManufacturers.append(.topActionTechnology)
        allManufacturers.append(.cosinuss)
        allManufacturers.append(.fitCare)
        allManufacturers.append(.magene)
        allManufacturers.append(.giantManufacturing)
        allManufacturers.append(.tigraSport)
        allManufacturers.append(.salutron)
        allManufacturers.append(.technogym)
        allManufacturers.append(.brytonSensors)
        allManufacturers.append(.latitudeLimited)
        allManufacturers.append(.soaringTechnology)
        allManufacturers.append(.igpSport)
        allManufacturers.append(.thinkRider)
        allManufacturers.append(.waterRower)

        allManufacturers.append(.healthAndLife)
        allManufacturers.append(.lezyne)
        allManufacturers.append(.scribeLabs)
        allManufacturers.append(.zwift)
        allManufacturers.append(.watteam)
        allManufacturers.append(.recon)
        allManufacturers.append(.faveroElectronics)
        allManufacturers.append(.dynoVelo)
        allManufacturers.append(.strava)
        allManufacturers.append(.precore)
        allManufacturers.append(.byrton)
        allManufacturers.append(.sram)
        allManufacturers.append(.mioTechnology)
        allManufacturers.append(.cobi)
        allManufacturers.append(.spivi)
        allManufacturers.append(.mioMagellan)
        allManufacturers.append(.eveSports)
        allManufacturers.append(.sensitivusGauge)
        allManufacturers.append(.podoon)
        allManufacturers.append(.lifeTimeFitness)
        allManufacturers.append(.falcoEMotors)
        allManufacturers.append(.minoura)
        allManufacturers.append(.cycliq)
        allManufacturers.append(.luxottica)
        allManufacturers.append(.trainerRoad)
        allManufacturers.append(.theSufferfest)
        allManufacturers.append(.fullSpeedAhead)
        allManufacturers.append(.virtualTraining)
        allManufacturers.append(.feedbackSports)
        allManufacturers.append(.omata)
        allManufacturers.append(.vdo)

        allManufacturers.append(.actiGraph)

        return allManufacturers
    }()
}
