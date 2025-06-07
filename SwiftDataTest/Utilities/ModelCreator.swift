//
//  ModelCreator.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/20/25.
//
import SwiftData
import SwiftUI


actor ModelCreator {

    var modelContainer: ModelContainer
    init(container: ModelContainer) {
        modelContainer = container


    }
     func insertSet(from setDTO: SetDTO) {
        let modelContext = ModelContext(modelContainer)
        let newSet = Set(baseSetSize: setDTO.data?.baseSetSize ?? 0, cards: [], code: setDTO.data?.code ?? "", isFoilOnly: setDTO.data?.isFoilOnly ?? false, isOnlineOnly: setDTO.data?.isOnlineOnly ?? false, keyruneCode: setDTO.data?.keyruneCode ?? "", name: setDTO.data?.name ?? "", releaseDate: setDTO.data?.releaseDate ?? "", tokens: [], totalSetSize: setDTO.data?.totalSetSize ?? 0, translations: nil, type: setDTO.data?.type ?? "")
        modelContext.insert(newSet)
        newSet.block = setDTO.data?.block
        newSet.cardsphereSetId = setDTO.data?.cardsphereSetID
        newSet.isForeignOnly = setDTO.data?.isForeignOnly ?? false
        newSet.isNonFoilOnly = setDTO.data?.isNonFoilOnly ?? false
        newSet.isPaperOnly = setDTO.data?.isPaperOnly ?? false
        newSet.isPartialPreview = setDTO.data?.isPartialPreview ?? false
        newSet.languages = setDTO.data?.languages ?? []
        newSet.mcmId = setDTO.data?.mcmID
        newSet.mcmIdExtras = setDTO.data?.mcmIDExtras
        newSet.mcmName = setDTO.data?.mcmName
        newSet.mtgoCode = setDTO.data?.mtgoCode
        newSet.parentCode = setDTO.data?.parentCode
        newSet.tokenSetCode = setDTO.data?.tokenSetCode
        do {
            try modelContext.save()
        } catch {
            print(error)
        }
        //cards
        for dtoCard in setDTO.data?.cards ?? [] {
            let newCard = createCard(from: dtoCard, modelContext: modelContext)
            newCard.set = newSet
            newSet.cards.append(newCard)
        }
//        DispatchQueue.concurrentPerform(iterations: setDTO.data?.cards?.count ?? 0 ) { index in
//            let dtoCard = setDTO.data?.cards?[index]
//            let newCard = createCard(from: dtoCard!)
//            newCard.set = newSet
//            newSet.cards.append(newCard)
//        }
        //tokens
//        for dtoToken in setDTO.data?.tokens ?? [] {
//            var newToken = createToken(from: dtoToken)
//            newToken.set = newSet
//            newSet.tokens.append(newToken)
//        }
        //translations
        if let t = setDTO.data?.translations {
            let translations = createTranslations(from: t)
            modelContext.insert(translations)
            translations.set = newSet
            newSet.translations = translations
       
        }
        do {
            try modelContext.save()
        } catch {
            print(error)
        }
        
    }
    func createCard(from dto: CardDTO, modelContext: ModelContext) -> Card {
        let newCard = Card(artist: dto.artist, asciiName: dto.asciiName, artistIds: dto.artistIDS, availability: dto.availability ?? [], boosterTypes: dto.boosterTypes, borderColor: dto.borderColor ?? "", cardParts: dto.cardParts, colorIdentity: dto.colorIdentity ?? [], colorIndicator: dto.colorIndicator, colors: dto.colors ?? [], convertedManaCost: dto.convertedManaCost ?? 0.0, defense: dto.defense, edhrecRank: dto.edhrecRank, edhrecSaltiness: dto.edhrecSaltiness, faceConvertedManaCost: dto.faceConvertedManaCost, faceFlavorName: dto.faceFlavorName, faceManaValue: dto.faceManaValue, faceName: dto.faceName, finishes: dto.finishes ?? [], flavorName: dto.flavorName, flavorText: dto.flavorText, foreignData: [], frameEffects: dto.frameEffects, frameVersion: dto.frameVersion ?? "", hand: dto.hand, hasAlternativeDeckLimit: dto.hasAlternativeDeckLimit, hasContentWarning: dto.hasContentWarning, hasFoil: dto.hasFoil ?? false, hasNonFoil: dto.hasNonFoil ?? false, identifiers: nil, isAlternative: dto.isAlternative, isFullArt: dto.isFullArt, isFunny: dto.isFunny, isOnlineOnly: dto.isOnlineOnly, isOversized: dto.isOversized, isPromo: dto.isPromo, isRebalanced: dto.isRebalanced, isReprint: dto.isReprint, isReserved: dto.isReserved, isStarter: dto.isStarter, isStorySpotlight: dto.isStorySpotlight, isTextless: dto.isTextless, isTimeshifted: dto.isTimeshifted, keywords: [], language: dto.language ?? "", layout: dto.layout ?? "", leadershipSkills: nil, legalities: nil, life: dto.life, loyalty: dto.loyalty, manaCost: dto.manaCost, manaValue: dto.manaValue ?? 0.0, name: dto.name ?? "", number: dto.number ?? "", originalPrintings: dto.originalPrintings, originalReleaseDate: dto.originalReleaseDate, originalText: dto.originalText, originalType: dto.originalType, otherFaceIds: dto.otherFaceIDS, power: dto.power, printings: dto.printings, promoTypes: dto.promoTypes, purchaseUrls: nil, rarity: dto.rarity ?? "", relatedCards: nil, rebalancedPrintings: dto.rebalancedPrintings, rulings: [], securityStamp: dto.securityStamp, setCode: dto.setCode ?? "", side: dto.side, signature: dto.signature, subsets: dto.subsets, subtypes: [], supertypes: [], text: dto.text, toughness: dto.toughness, type: dto.type ?? "", types:  [], uuid: dto.uuid ?? "", variations: [], watermark: dto.watermark, set: nil)
        modelContext.insert(newCard)
//        do {
//            try modelContext.save()
//        } catch {
//            print(error)
//        }
        //card types
        for ct in dto.types ?? [] {
            let t = CardType(text: ct)
            t.card = newCard
            newCard.types.append(t)
        }
        //supertypes
        for st in dto.supertypes ?? [] {
            let t = SuperType(text: st)
            t.card = newCard
            newCard.supertypes.append(t)
        }
        //subtypes
        for subt in dto.subtypes ?? [] {
            let t = SubType(text: subt)
            t.card = newCard
            newCard.subtypes.append(t)
        }
        
        //keywords
        for kw in dto.keywords ?? [] {
            let k = Keyword(text: kw)
            k.card = newCard
            newCard.keywords.append(k)
        }
        //color Identity
        //color indicator
        //colors
        //finishes
        //frame effects
        //promo types
        //subsets
        
        //foreignData
        for fd in newCard.foreignData {
            let newData = ForeignData(faceName: fd.faceName, flavorText: fd.flavorText, identifiers: nil, language: fd.language, name: fd.name, text: fd.text, type: fd.type)
            modelContext.insert(newData)
            do {
                try modelContext.save()
            } catch {
                print(error)
            }
            let newIDs = Identifiers(abuId: fd.identifiers?.abuId, cardKingdomEtchedId: fd.identifiers?.cardKingdomEtchedId, cardKingdomFoilId: fd.identifiers?.cardKingdomFoilId, cardKingdomId: fd.identifiers?.cardKingdomId, cardsphereId: fd.identifiers?.cardsphereId, cardsphereFoilId: fd.identifiers?.cardsphereFoilId, cardtraderId: fd.identifiers?.cardtraderId, csiId: fd.identifiers?.csiId, mcmId: fd.identifiers?.mcmId, mcmMetaId: fd.identifiers?.mcmMetaId, miniaturemarketId: fd.identifiers?.miniaturemarketId, mtgArenaId: fd.identifiers?.mtgArenaId, mtgjsonFoilVersionId: fd.identifiers?.mtgjsonFoilVersionId, mtgjsonNonFoilVersionId: fd.identifiers?.mtgjsonNonFoilVersionId, mtgjsonV4Id: fd.identifiers?.mtgjsonV4Id, mtgoFoilId: fd.identifiers?.mtgoFoilId, mtgoId: fd.identifiers?.mtgoId, multiverseId: fd.identifiers?.multiverseId, scgId: fd.identifiers?.scgId, scryfallId: fd.identifiers?.scryfallId, scryfallCardBackId: fd.identifiers?.scryfallCardBackId, scryfallOracleId: fd.identifiers?.scryfallOracleId, scryfallIllustrationId: fd.identifiers?.scryfallIllustrationId, tcgplayerProductId: fd.identifiers?.tcgplayerProductId, tcgplayerEtchedProductId: fd.identifiers?.tcgplayerEtchedProductId, tntId: fd.identifiers?.tntId)
            modelContext.insert(newIDs)
            newIDs.foreignData = newData
            newData.identifiers = newIDs
            newData.card = newCard
            newCard.foreignData.append(newData)
            
        }
        //identifiers
        let ids = Identifiers(abuId: dto.identifiers?.abuID, cardKingdomEtchedId: dto.identifiers?.cardKingdomEtchedID, cardKingdomFoilId: dto.identifiers?.cardKingdomFoilID, cardKingdomId: dto.identifiers?.cardKingdomID, cardsphereId: dto.identifiers?.cardsphereID, cardsphereFoilId: dto.identifiers?.cardsphereFoilID, cardtraderId: dto.identifiers?.cardtraderID, csiId: dto.identifiers?.csiID, mcmId: dto.identifiers?.mcmID, mcmMetaId: dto.identifiers?.mcmMetaID, miniaturemarketId: dto.identifiers?.miniaturemarketID, mtgArenaId: dto.identifiers?.mtgArenaID, mtgjsonFoilVersionId: dto.identifiers?.mtgjsonFoilVersionID, mtgjsonNonFoilVersionId: dto.identifiers?.mtgjsonNonFoilVersionID, mtgjsonV4Id: dto.identifiers?.mtgjsonV4ID, mtgoFoilId: dto.identifiers?.mtgoFoilID, mtgoId: dto.identifiers?.mtgoID, multiverseId: dto.identifiers?.multiverseID, scgId: dto.identifiers?.scgID, scryfallId: dto.identifiers?.scryfallID, scryfallCardBackId: dto.identifiers?.scryfallCardBackID, scryfallOracleId: dto.identifiers?.scryfallOracleID, scryfallIllustrationId: dto.identifiers?.scryfallIllustrationID, tcgplayerProductId: dto.identifiers?.tcgplayerProductID, tcgplayerEtchedProductId: dto.purchaseUrls?.tcgplayerEtched, tntId: dto.identifiers?.tntID)
        modelContext.insert(ids)
        ids.card = newCard
        newCard.identifiers = ids
        //leadershipSkills
        let ls = LeadershipSkills(brawl: dto.leadershipSkills?.brawl ?? false, commander: dto.leadershipSkills?.commander ?? false, oathbreaker: dto.leadershipSkills?.oathbreaker ?? false)
        modelContext.insert(ls)
        ls.card = newCard
        newCard.leadershipSkills = ls
        //legalities
        let newLegality = Legalities(alchemy: dto.legalities?.alchemy ?? "", brawl: dto.legalities?.brawl, commander: dto.legalities?.commander, duel: dto.legalities?.duel, explorer: dto.legalities?.explorer, future: dto.legalities?.future, gladiator: dto.legalities?.gladiator, historic: dto.legalities?.historic, historicBrawl: dto.legalities?.historicBrawl, legacy: dto.legalities?.legacy, modern: dto.legalities?.modern, oathbreaker: dto.legalities?.oathbreaker, oldschool: dto.legalities?.oldschool, pauper: dto.legalities?.pauper, pauperCommander: dto.legalities?.paupercommander, penny: dto.legalities?.penny, pioneer: dto.legalities?.pioneer, predh: dto.legalities?.predh, premodern: dto.legalities?.premodern, standard: dto.legalities?.standard, standardBrawl: dto.legalities?.standardbrawl, timeless: dto.legalities?.timeless, vintage: dto.legalities?.vintage)
        modelContext.insert(newLegality)
        newLegality.card = newCard
        newCard.legalities = newLegality
        //purchaseURLs
        let newPurchaseURLs = PurchaseUrls(cardKingdom: dto.purchaseUrls?.cardKingdom, cardKingdomEtched: dto.purchaseUrls?.cardKingdomEtched, cardKingdomFoil: dto.purchaseUrls?.cardKingdomFoil, cardmarket: dto.purchaseUrls?.cardmarket, tcgplayer: dto.purchaseUrls?.tcgplayer, tcgplayerEtched: dto.purchaseUrls?.tcgplayerEtched)
        modelContext.insert(newPurchaseURLs)
        newPurchaseURLs.card = newCard
        newCard.purchaseUrls = newPurchaseURLs
        //RelatedCards
        let newRelatedCards = RelatedCards(reverseRelated: dto.relatedCards?.reverseRelated, spellbook: dto.relatedCards?.spellbook)
        modelContext.insert(newRelatedCards)
        newRelatedCards.card = newCard
        newCard.relatedCards = newRelatedCards
        //rulings
        for r in dto.rulings ?? [] {
            let newRuling = Ruling(date: r.date ?? "", text: r.text ?? "")
            modelContext.insert(newRuling)
            newRuling.card = newCard
            newCard.rulings?.append(newRuling)
        }
        
        return newCard
    }
//    func createToken(from tokenDTO: TokenDTO) -> Token {
//        var newToken = Token()
//
//        return newToken
//    }
    func createTranslations(from translationsDTO: TranslationsDTO) -> Translations {
        let Translations = Translations(chineseSimplified: translationsDTO.chineseSimplified, chineseTraditional: translationsDTO.chineseTraditional, french: translationsDTO.french, german: translationsDTO.german, italian: translationsDTO.italian, japanese: translationsDTO.japanese, korean: translationsDTO.korean, portugueseBrazil: translationsDTO.portugueseBrazil, russian: translationsDTO.russian, spanish: translationsDTO.spanish)
        return Translations
    }

}
