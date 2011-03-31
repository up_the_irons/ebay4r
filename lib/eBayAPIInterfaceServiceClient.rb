#!/usr/bin/env ruby
require 'eBayDriver.rb'

endpoint_url = ARGV.shift
obj = EBayAPIInterface.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddDispute(addDisputeRequest)
#
# ARGS
#   addDisputeRequest AddDisputeRequestType - {urn:ebay:apis:eBLBaseComponents}AddDisputeRequestType
#
# RETURNS
#   addDisputeResponse AddDisputeResponseType - {urn:ebay:apis:eBLBaseComponents}AddDisputeResponseType
#
addDisputeRequest = nil
puts obj.addDispute(addDisputeRequest)

# SYNOPSIS
#   AddDisputeResponse(addDisputeResponseRequest)
#
# ARGS
#   addDisputeResponseRequest AddDisputeResponseRequestType - {urn:ebay:apis:eBLBaseComponents}AddDisputeResponseRequestType
#
# RETURNS
#   addDisputeResponseResponse AddDisputeResponseResponseType - {urn:ebay:apis:eBLBaseComponents}AddDisputeResponseResponseType
#
addDisputeResponseRequest = nil
puts obj.addDisputeResponse(addDisputeResponseRequest)

# SYNOPSIS
#   AddFixedPriceItem(addFixedPriceItemRequest)
#
# ARGS
#   addFixedPriceItemRequest AddFixedPriceItemRequestType - {urn:ebay:apis:eBLBaseComponents}AddFixedPriceItemRequestType
#
# RETURNS
#   addFixedPriceItemResponse AddFixedPriceItemResponseType - {urn:ebay:apis:eBLBaseComponents}AddFixedPriceItemResponseType
#
addFixedPriceItemRequest = nil
puts obj.addFixedPriceItem(addFixedPriceItemRequest)

# SYNOPSIS
#   AddItem(addItemRequest)
#
# ARGS
#   addItemRequest  AddItemRequestType - {urn:ebay:apis:eBLBaseComponents}AddItemRequestType
#
# RETURNS
#   addItemResponse AddItemResponseType - {urn:ebay:apis:eBLBaseComponents}AddItemResponseType
#
addItemRequest = nil
puts obj.addItem(addItemRequest)

# SYNOPSIS
#   AddItemFromSellingManagerTemplate(addItemFromSellingManagerTemplateRequest)
#
# ARGS
#   addItemFromSellingManagerTemplateRequest AddItemFromSellingManagerTemplateRequestType - {urn:ebay:apis:eBLBaseComponents}AddItemFromSellingManagerTemplateRequestType
#
# RETURNS
#   addItemFromSellingManagerTemplateResponse AddItemFromSellingManagerTemplateResponseType - {urn:ebay:apis:eBLBaseComponents}AddItemFromSellingManagerTemplateResponseType
#
addItemFromSellingManagerTemplateRequest = nil
puts obj.addItemFromSellingManagerTemplate(addItemFromSellingManagerTemplateRequest)

# SYNOPSIS
#   AddItems(addItemsRequest)
#
# ARGS
#   addItemsRequest AddItemsRequestType - {urn:ebay:apis:eBLBaseComponents}AddItemsRequestType
#
# RETURNS
#   addItemsResponse AddItemsResponseType - {urn:ebay:apis:eBLBaseComponents}AddItemsResponseType
#
addItemsRequest = nil
puts obj.addItems(addItemsRequest)

# SYNOPSIS
#   AddMemberMessageAAQToPartner(addMemberMessageAAQToPartnerRequest)
#
# ARGS
#   addMemberMessageAAQToPartnerRequest AddMemberMessageAAQToPartnerRequestType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessageAAQToPartnerRequestType
#
# RETURNS
#   addMemberMessageAAQToPartnerResponse AddMemberMessageAAQToPartnerResponseType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessageAAQToPartnerResponseType
#
addMemberMessageAAQToPartnerRequest = nil
puts obj.addMemberMessageAAQToPartner(addMemberMessageAAQToPartnerRequest)

# SYNOPSIS
#   AddMemberMessageRTQ(addMemberMessageRTQRequest)
#
# ARGS
#   addMemberMessageRTQRequest AddMemberMessageRTQRequestType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessageRTQRequestType
#
# RETURNS
#   addMemberMessageRTQResponse AddMemberMessageRTQResponseType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessageRTQResponseType
#
addMemberMessageRTQRequest = nil
puts obj.addMemberMessageRTQ(addMemberMessageRTQRequest)

# SYNOPSIS
#   AddMemberMessagesAAQToBidder(addMemberMessagesAAQToBidderRequest)
#
# ARGS
#   addMemberMessagesAAQToBidderRequest AddMemberMessagesAAQToBidderRequestType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessagesAAQToBidderRequestType
#
# RETURNS
#   addMemberMessagesAAQToBidderResponse AddMemberMessagesAAQToBidderResponseType - {urn:ebay:apis:eBLBaseComponents}AddMemberMessagesAAQToBidderResponseType
#
addMemberMessagesAAQToBidderRequest = nil
puts obj.addMemberMessagesAAQToBidder(addMemberMessagesAAQToBidderRequest)

# SYNOPSIS
#   AddOrder(addOrderRequest)
#
# ARGS
#   addOrderRequest AddOrderRequestType - {urn:ebay:apis:eBLBaseComponents}AddOrderRequestType
#
# RETURNS
#   addOrderResponse AddOrderResponseType - {urn:ebay:apis:eBLBaseComponents}AddOrderResponseType
#
addOrderRequest = nil
puts obj.addOrder(addOrderRequest)

# SYNOPSIS
#   AddSecondChanceItem(addSecondChanceItemRequest)
#
# ARGS
#   addSecondChanceItemRequest AddSecondChanceItemRequestType - {urn:ebay:apis:eBLBaseComponents}AddSecondChanceItemRequestType
#
# RETURNS
#   addSecondChanceItemResponse AddSecondChanceItemResponseType - {urn:ebay:apis:eBLBaseComponents}AddSecondChanceItemResponseType
#
addSecondChanceItemRequest = nil
puts obj.addSecondChanceItem(addSecondChanceItemRequest)

# SYNOPSIS
#   AddSellingManagerInventoryFolder(addSellingManagerInventoryFolderRequest)
#
# ARGS
#   addSellingManagerInventoryFolderRequest AddSellingManagerInventoryFolderRequestType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerInventoryFolderRequestType
#
# RETURNS
#   addSellingManagerInventoryFolderResponse AddSellingManagerInventoryFolderResponseType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerInventoryFolderResponseType
#
addSellingManagerInventoryFolderRequest = nil
puts obj.addSellingManagerInventoryFolder(addSellingManagerInventoryFolderRequest)

# SYNOPSIS
#   AddSellingManagerProduct(addSellingManagerProductRequest)
#
# ARGS
#   addSellingManagerProductRequest AddSellingManagerProductRequestType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerProductRequestType
#
# RETURNS
#   addSellingManagerProductResponse AddSellingManagerProductResponseType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerProductResponseType
#
addSellingManagerProductRequest = nil
puts obj.addSellingManagerProduct(addSellingManagerProductRequest)

# SYNOPSIS
#   AddSellingManagerTemplate(addSellingManagerTemplateRequest)
#
# ARGS
#   addSellingManagerTemplateRequest AddSellingManagerTemplateRequestType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerTemplateRequestType
#
# RETURNS
#   addSellingManagerTemplateResponse AddSellingManagerTemplateResponseType - {urn:ebay:apis:eBLBaseComponents}AddSellingManagerTemplateResponseType
#
addSellingManagerTemplateRequest = nil
puts obj.addSellingManagerTemplate(addSellingManagerTemplateRequest)

# SYNOPSIS
#   AddToItemDescription(addToItemDescriptionRequest)
#
# ARGS
#   addToItemDescriptionRequest AddToItemDescriptionRequestType - {urn:ebay:apis:eBLBaseComponents}AddToItemDescriptionRequestType
#
# RETURNS
#   addToItemDescriptionResponse AddToItemDescriptionResponseType - {urn:ebay:apis:eBLBaseComponents}AddToItemDescriptionResponseType
#
addToItemDescriptionRequest = nil
puts obj.addToItemDescription(addToItemDescriptionRequest)

# SYNOPSIS
#   AddToWatchList(addToWatchListRequest)
#
# ARGS
#   addToWatchListRequest AddToWatchListRequestType - {urn:ebay:apis:eBLBaseComponents}AddToWatchListRequestType
#
# RETURNS
#   addToWatchListResponse AddToWatchListResponseType - {urn:ebay:apis:eBLBaseComponents}AddToWatchListResponseType
#
addToWatchListRequest = nil
puts obj.addToWatchList(addToWatchListRequest)

# SYNOPSIS
#   AddTransactionConfirmationItem(addTransactionConfirmationItemRequest)
#
# ARGS
#   addTransactionConfirmationItemRequest AddTransactionConfirmationItemRequestType - {urn:ebay:apis:eBLBaseComponents}AddTransactionConfirmationItemRequestType
#
# RETURNS
#   addTransactionConfirmationItemResponse AddTransactionConfirmationItemResponseType - {urn:ebay:apis:eBLBaseComponents}AddTransactionConfirmationItemResponseType
#
addTransactionConfirmationItemRequest = nil
puts obj.addTransactionConfirmationItem(addTransactionConfirmationItemRequest)

# SYNOPSIS
#   CompleteSale(completeSaleRequest)
#
# ARGS
#   completeSaleRequest CompleteSaleRequestType - {urn:ebay:apis:eBLBaseComponents}CompleteSaleRequestType
#
# RETURNS
#   completeSaleResponse CompleteSaleResponseType - {urn:ebay:apis:eBLBaseComponents}CompleteSaleResponseType
#
completeSaleRequest = nil
puts obj.completeSale(completeSaleRequest)

# SYNOPSIS
#   ConfirmIdentity(confirmIdentityRequest)
#
# ARGS
#   confirmIdentityRequest ConfirmIdentityRequestType - {urn:ebay:apis:eBLBaseComponents}ConfirmIdentityRequestType
#
# RETURNS
#   confirmIdentityResponse ConfirmIdentityResponseType - {urn:ebay:apis:eBLBaseComponents}ConfirmIdentityResponseType
#
confirmIdentityRequest = nil
puts obj.confirmIdentity(confirmIdentityRequest)

# SYNOPSIS
#   DeleteMyMessages(deleteMyMessagesRequest)
#
# ARGS
#   deleteMyMessagesRequest DeleteMyMessagesRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteMyMessagesRequestType
#
# RETURNS
#   deleteMyMessagesResponse DeleteMyMessagesResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteMyMessagesResponseType
#
deleteMyMessagesRequest = nil
puts obj.deleteMyMessages(deleteMyMessagesRequest)

# SYNOPSIS
#   DeleteSellingManagerInventoryFolder(deleteSellingManagerInventoryFolderRequest)
#
# ARGS
#   deleteSellingManagerInventoryFolderRequest DeleteSellingManagerInventoryFolderRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerInventoryFolderRequestType
#
# RETURNS
#   deleteSellingManagerInventoryFolderResponse DeleteSellingManagerInventoryFolderResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerInventoryFolderResponseType
#
deleteSellingManagerInventoryFolderRequest = nil
puts obj.deleteSellingManagerInventoryFolder(deleteSellingManagerInventoryFolderRequest)

# SYNOPSIS
#   DeleteSellingManagerItemAutomationRule(deleteSellingManagerItemAutomationRuleRequest)
#
# ARGS
#   deleteSellingManagerItemAutomationRuleRequest DeleteSellingManagerItemAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerItemAutomationRuleRequestType
#
# RETURNS
#   deleteSellingManagerItemAutomationRuleResponse DeleteSellingManagerItemAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerItemAutomationRuleResponseType
#
deleteSellingManagerItemAutomationRuleRequest = nil
puts obj.deleteSellingManagerItemAutomationRule(deleteSellingManagerItemAutomationRuleRequest)

# SYNOPSIS
#   DeleteSellingManagerProduct(deleteSellingManagerProductRequest)
#
# ARGS
#   deleteSellingManagerProductRequest DeleteSellingManagerProductRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerProductRequestType
#
# RETURNS
#   deleteSellingManagerProductResponse DeleteSellingManagerProductResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerProductResponseType
#
deleteSellingManagerProductRequest = nil
puts obj.deleteSellingManagerProduct(deleteSellingManagerProductRequest)

# SYNOPSIS
#   DeleteSellingManagerTemplate(deleteSellingManagerTemplateRequest)
#
# ARGS
#   deleteSellingManagerTemplateRequest DeleteSellingManagerTemplateRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerTemplateRequestType
#
# RETURNS
#   deleteSellingManagerTemplateResponse DeleteSellingManagerTemplateResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerTemplateResponseType
#
deleteSellingManagerTemplateRequest = nil
puts obj.deleteSellingManagerTemplate(deleteSellingManagerTemplateRequest)

# SYNOPSIS
#   DeleteSellingManagerTemplateAutomationRule(deleteSellingManagerTemplateAutomationRuleRequest)
#
# ARGS
#   deleteSellingManagerTemplateAutomationRuleRequest DeleteSellingManagerTemplateAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerTemplateAutomationRuleRequestType
#
# RETURNS
#   deleteSellingManagerTemplateAutomationRuleResponse DeleteSellingManagerTemplateAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}DeleteSellingManagerTemplateAutomationRuleResponseType
#
deleteSellingManagerTemplateAutomationRuleRequest = nil
puts obj.deleteSellingManagerTemplateAutomationRule(deleteSellingManagerTemplateAutomationRuleRequest)

# SYNOPSIS
#   DisableUnpaidItemAssistance(disableUnpaidItemAssistanceRequest)
#
# ARGS
#   disableUnpaidItemAssistanceRequest DisableUnpaidItemAssistanceRequestType - {urn:ebay:apis:eBLBaseComponents}DisableUnpaidItemAssistanceRequestType
#
# RETURNS
#   disableUnpaidItemAssistanceResponse DisableUnpaidItemAssistanceResponseType - {urn:ebay:apis:eBLBaseComponents}DisableUnpaidItemAssistanceResponseType
#
disableUnpaidItemAssistanceRequest = nil
puts obj.disableUnpaidItemAssistance(disableUnpaidItemAssistanceRequest)

# SYNOPSIS
#   EndFixedPriceItem(endFixedPriceItemRequest)
#
# ARGS
#   endFixedPriceItemRequest EndFixedPriceItemRequestType - {urn:ebay:apis:eBLBaseComponents}EndFixedPriceItemRequestType
#
# RETURNS
#   endFixedPriceItemResponse EndFixedPriceItemResponseType - {urn:ebay:apis:eBLBaseComponents}EndFixedPriceItemResponseType
#
endFixedPriceItemRequest = nil
puts obj.endFixedPriceItem(endFixedPriceItemRequest)

# SYNOPSIS
#   EndItem(endItemRequest)
#
# ARGS
#   endItemRequest  EndItemRequestType - {urn:ebay:apis:eBLBaseComponents}EndItemRequestType
#
# RETURNS
#   endItemResponse EndItemResponseType - {urn:ebay:apis:eBLBaseComponents}EndItemResponseType
#
endItemRequest = nil
puts obj.endItem(endItemRequest)

# SYNOPSIS
#   EndItems(endItemsRequest)
#
# ARGS
#   endItemsRequest EndItemsRequestType - {urn:ebay:apis:eBLBaseComponents}EndItemsRequestType
#
# RETURNS
#   endItemsResponse EndItemsResponseType - {urn:ebay:apis:eBLBaseComponents}EndItemsResponseType
#
endItemsRequest = nil
puts obj.endItems(endItemsRequest)

# SYNOPSIS
#   ExtendSiteHostedPictures(extendSiteHostedPicturesRequest)
#
# ARGS
#   extendSiteHostedPicturesRequest ExtendSiteHostedPicturesRequestType - {urn:ebay:apis:eBLBaseComponents}ExtendSiteHostedPicturesRequestType
#
# RETURNS
#   extendSiteHostedPicturesResponse ExtendSiteHostedPicturesResponseType - {urn:ebay:apis:eBLBaseComponents}ExtendSiteHostedPicturesResponseType
#
extendSiteHostedPicturesRequest = nil
puts obj.extendSiteHostedPictures(extendSiteHostedPicturesRequest)

# SYNOPSIS
#   FetchToken(fetchTokenRequest)
#
# ARGS
#   fetchTokenRequest FetchTokenRequestType - {urn:ebay:apis:eBLBaseComponents}FetchTokenRequestType
#
# RETURNS
#   fetchTokenResponse FetchTokenResponseType - {urn:ebay:apis:eBLBaseComponents}FetchTokenResponseType
#
fetchTokenRequest = nil
puts obj.fetchToken(fetchTokenRequest)

# SYNOPSIS
#   GetAccount(getAccountRequest)
#
# ARGS
#   getAccountRequest GetAccountRequestType - {urn:ebay:apis:eBLBaseComponents}GetAccountRequestType
#
# RETURNS
#   getAccountResponse GetAccountResponseType - {urn:ebay:apis:eBLBaseComponents}GetAccountResponseType
#
getAccountRequest = nil
puts obj.getAccount(getAccountRequest)

# SYNOPSIS
#   GetAdFormatLeads(getAdFormatLeadsRequest)
#
# ARGS
#   getAdFormatLeadsRequest GetAdFormatLeadsRequestType - {urn:ebay:apis:eBLBaseComponents}GetAdFormatLeadsRequestType
#
# RETURNS
#   getAdFormatLeadsResponse GetAdFormatLeadsResponseType - {urn:ebay:apis:eBLBaseComponents}GetAdFormatLeadsResponseType
#
getAdFormatLeadsRequest = nil
puts obj.getAdFormatLeads(getAdFormatLeadsRequest)

# SYNOPSIS
#   GetAllBidders(getAllBiddersRequest)
#
# ARGS
#   getAllBiddersRequest GetAllBiddersRequestType - {urn:ebay:apis:eBLBaseComponents}GetAllBiddersRequestType
#
# RETURNS
#   getAllBiddersResponse GetAllBiddersResponseType - {urn:ebay:apis:eBLBaseComponents}GetAllBiddersResponseType
#
getAllBiddersRequest = nil
puts obj.getAllBidders(getAllBiddersRequest)

# SYNOPSIS
#   GetApiAccessRules(getApiAccessRulesRequest)
#
# ARGS
#   getApiAccessRulesRequest GetApiAccessRulesRequestType - {urn:ebay:apis:eBLBaseComponents}GetApiAccessRulesRequestType
#
# RETURNS
#   getApiAccessRulesResponse GetApiAccessRulesResponseType - {urn:ebay:apis:eBLBaseComponents}GetApiAccessRulesResponseType
#
getApiAccessRulesRequest = nil
puts obj.getApiAccessRules(getApiAccessRulesRequest)

# SYNOPSIS
#   GetAttributesCS(getAttributesCSRequest)
#
# ARGS
#   getAttributesCSRequest GetAttributesCSRequestType - {urn:ebay:apis:eBLBaseComponents}GetAttributesCSRequestType
#
# RETURNS
#   getAttributesCSResponse GetAttributesCSResponseType - {urn:ebay:apis:eBLBaseComponents}GetAttributesCSResponseType
#
getAttributesCSRequest = nil
puts obj.getAttributesCS(getAttributesCSRequest)

# SYNOPSIS
#   GetAttributesXSL(getAttributesXSLRequest)
#
# ARGS
#   getAttributesXSLRequest GetAttributesXSLRequestType - {urn:ebay:apis:eBLBaseComponents}GetAttributesXSLRequestType
#
# RETURNS
#   getAttributesXSLResponse GetAttributesXSLResponseType - {urn:ebay:apis:eBLBaseComponents}GetAttributesXSLResponseType
#
getAttributesXSLRequest = nil
puts obj.getAttributesXSL(getAttributesXSLRequest)

# SYNOPSIS
#   GetBestOffers(getBestOffersRequest)
#
# ARGS
#   getBestOffersRequest GetBestOffersRequestType - {urn:ebay:apis:eBLBaseComponents}GetBestOffersRequestType
#
# RETURNS
#   getBestOffersResponse GetBestOffersResponseType - {urn:ebay:apis:eBLBaseComponents}GetBestOffersResponseType
#
getBestOffersRequest = nil
puts obj.getBestOffers(getBestOffersRequest)

# SYNOPSIS
#   GetBidderList(getBidderListRequest)
#
# ARGS
#   getBidderListRequest GetBidderListRequestType - {urn:ebay:apis:eBLBaseComponents}GetBidderListRequestType
#
# RETURNS
#   getBidderListResponse GetBidderListResponseType - {urn:ebay:apis:eBLBaseComponents}GetBidderListResponseType
#
getBidderListRequest = nil
puts obj.getBidderList(getBidderListRequest)

# SYNOPSIS
#   GetCategories(getCategoriesRequest)
#
# ARGS
#   getCategoriesRequest GetCategoriesRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategoriesRequestType
#
# RETURNS
#   getCategoriesResponse GetCategoriesResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategoriesResponseType
#
getCategoriesRequest = nil
puts obj.getCategories(getCategoriesRequest)

# SYNOPSIS
#   GetCategory2CS(getCategory2CSRequest)
#
# ARGS
#   getCategory2CSRequest GetCategory2CSRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategory2CSRequestType
#
# RETURNS
#   getCategory2CSResponse GetCategory2CSResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategory2CSResponseType
#
getCategory2CSRequest = nil
puts obj.getCategory2CS(getCategory2CSRequest)

# SYNOPSIS
#   GetCategoryFeatures(getCategoryFeaturesRequest)
#
# ARGS
#   getCategoryFeaturesRequest GetCategoryFeaturesRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategoryFeaturesRequestType
#
# RETURNS
#   getCategoryFeaturesResponse GetCategoryFeaturesResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategoryFeaturesResponseType
#
getCategoryFeaturesRequest = nil
puts obj.getCategoryFeatures(getCategoryFeaturesRequest)

# SYNOPSIS
#   GetCategoryListings(getCategoryListingsRequest)
#
# ARGS
#   getCategoryListingsRequest GetCategoryListingsRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategoryListingsRequestType
#
# RETURNS
#   getCategoryListingsResponse GetCategoryListingsResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategoryListingsResponseType
#
getCategoryListingsRequest = nil
puts obj.getCategoryListings(getCategoryListingsRequest)

# SYNOPSIS
#   GetCategoryMappings(getCategoryMappingsRequest)
#
# ARGS
#   getCategoryMappingsRequest GetCategoryMappingsRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategoryMappingsRequestType
#
# RETURNS
#   getCategoryMappingsResponse GetCategoryMappingsResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategoryMappingsResponseType
#
getCategoryMappingsRequest = nil
puts obj.getCategoryMappings(getCategoryMappingsRequest)

# SYNOPSIS
#   GetCategorySpecifics(getCategorySpecificsRequest)
#
# ARGS
#   getCategorySpecificsRequest GetCategorySpecificsRequestType - {urn:ebay:apis:eBLBaseComponents}GetCategorySpecificsRequestType
#
# RETURNS
#   getCategorySpecificsResponse GetCategorySpecificsResponseType - {urn:ebay:apis:eBLBaseComponents}GetCategorySpecificsResponseType
#
getCategorySpecificsRequest = nil
puts obj.getCategorySpecifics(getCategorySpecificsRequest)

# SYNOPSIS
#   GetChallengeToken(getChallengeTokenRequest)
#
# ARGS
#   getChallengeTokenRequest GetChallengeTokenRequestType - {urn:ebay:apis:eBLBaseComponents}GetChallengeTokenRequestType
#
# RETURNS
#   getChallengeTokenResponse GetChallengeTokenResponseType - {urn:ebay:apis:eBLBaseComponents}GetChallengeTokenResponseType
#
getChallengeTokenRequest = nil
puts obj.getChallengeToken(getChallengeTokenRequest)

# SYNOPSIS
#   GetCharities(getCharitiesRequest)
#
# ARGS
#   getCharitiesRequest GetCharitiesRequestType - {urn:ebay:apis:eBLBaseComponents}GetCharitiesRequestType
#
# RETURNS
#   getCharitiesResponse GetCharitiesResponseType - {urn:ebay:apis:eBLBaseComponents}GetCharitiesResponseType
#
getCharitiesRequest = nil
puts obj.getCharities(getCharitiesRequest)

# SYNOPSIS
#   GetClientAlertsAuthToken(getClientAlertsAuthTokenRequest)
#
# ARGS
#   getClientAlertsAuthTokenRequest GetClientAlertsAuthTokenRequestType - {urn:ebay:apis:eBLBaseComponents}GetClientAlertsAuthTokenRequestType
#
# RETURNS
#   getClientAlertsAuthTokenResponse GetClientAlertsAuthTokenResponseType - {urn:ebay:apis:eBLBaseComponents}GetClientAlertsAuthTokenResponseType
#
getClientAlertsAuthTokenRequest = nil
puts obj.getClientAlertsAuthToken(getClientAlertsAuthTokenRequest)

# SYNOPSIS
#   GetContextualKeywords(getContextualKeywordsRequest)
#
# ARGS
#   getContextualKeywordsRequest GetContextualKeywordsRequestType - {urn:ebay:apis:eBLBaseComponents}GetContextualKeywordsRequestType
#
# RETURNS
#   getContextualKeywordsResponse GetContextualKeywordsResponseType - {urn:ebay:apis:eBLBaseComponents}GetContextualKeywordsResponseType
#
getContextualKeywordsRequest = nil
puts obj.getContextualKeywords(getContextualKeywordsRequest)

# SYNOPSIS
#   GetCrossPromotions(getCrossPromotionsRequest)
#
# ARGS
#   getCrossPromotionsRequest GetCrossPromotionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetCrossPromotionsRequestType
#
# RETURNS
#   getCrossPromotionsResponse GetCrossPromotionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetCrossPromotionsResponseType
#
getCrossPromotionsRequest = nil
puts obj.getCrossPromotions(getCrossPromotionsRequest)

# SYNOPSIS
#   GetDescriptionTemplates(getDescriptionTemplatesRequest)
#
# ARGS
#   getDescriptionTemplatesRequest GetDescriptionTemplatesRequestType - {urn:ebay:apis:eBLBaseComponents}GetDescriptionTemplatesRequestType
#
# RETURNS
#   getDescriptionTemplatesResponse GetDescriptionTemplatesResponseType - {urn:ebay:apis:eBLBaseComponents}GetDescriptionTemplatesResponseType
#
getDescriptionTemplatesRequest = nil
puts obj.getDescriptionTemplates(getDescriptionTemplatesRequest)

# SYNOPSIS
#   GetDispute(getDisputeRequest)
#
# ARGS
#   getDisputeRequest GetDisputeRequestType - {urn:ebay:apis:eBLBaseComponents}GetDisputeRequestType
#
# RETURNS
#   getDisputeResponse GetDisputeResponseType - {urn:ebay:apis:eBLBaseComponents}GetDisputeResponseType
#
getDisputeRequest = nil
puts obj.getDispute(getDisputeRequest)

# SYNOPSIS
#   GetFeedback(getFeedbackRequest)
#
# ARGS
#   getFeedbackRequest GetFeedbackRequestType - {urn:ebay:apis:eBLBaseComponents}GetFeedbackRequestType
#
# RETURNS
#   getFeedbackResponse GetFeedbackResponseType - {urn:ebay:apis:eBLBaseComponents}GetFeedbackResponseType
#
getFeedbackRequest = nil
puts obj.getFeedback(getFeedbackRequest)

# SYNOPSIS
#   GetHighBidders(getHighBiddersRequest)
#
# ARGS
#   getHighBiddersRequest GetHighBiddersRequestType - {urn:ebay:apis:eBLBaseComponents}GetHighBiddersRequestType
#
# RETURNS
#   getHighBiddersResponse GetHighBiddersResponseType - {urn:ebay:apis:eBLBaseComponents}GetHighBiddersResponseType
#
getHighBiddersRequest = nil
puts obj.getHighBidders(getHighBiddersRequest)

# SYNOPSIS
#   GetItem(getItemRequest)
#
# ARGS
#   getItemRequest  GetItemRequestType - {urn:ebay:apis:eBLBaseComponents}GetItemRequestType
#
# RETURNS
#   getItemResponse GetItemResponseType - {urn:ebay:apis:eBLBaseComponents}GetItemResponseType
#
getItemRequest = nil
puts obj.getItem(getItemRequest)

# SYNOPSIS
#   GetItemRecommendations(getItemRecommendationsRequest)
#
# ARGS
#   getItemRecommendationsRequest GetItemRecommendationsRequestType - {urn:ebay:apis:eBLBaseComponents}GetItemRecommendationsRequestType
#
# RETURNS
#   getItemRecommendationsResponse GetItemRecommendationsResponseType - {urn:ebay:apis:eBLBaseComponents}GetItemRecommendationsResponseType
#
getItemRecommendationsRequest = nil
puts obj.getItemRecommendations(getItemRecommendationsRequest)

# SYNOPSIS
#   GetItemShipping(getItemShippingRequest)
#
# ARGS
#   getItemShippingRequest GetItemShippingRequestType - {urn:ebay:apis:eBLBaseComponents}GetItemShippingRequestType
#
# RETURNS
#   getItemShippingResponse GetItemShippingResponseType - {urn:ebay:apis:eBLBaseComponents}GetItemShippingResponseType
#
getItemShippingRequest = nil
puts obj.getItemShipping(getItemShippingRequest)

# SYNOPSIS
#   GetItemTransactions(getItemTransactionsRequest)
#
# ARGS
#   getItemTransactionsRequest GetItemTransactionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetItemTransactionsRequestType
#
# RETURNS
#   getItemTransactionsResponse GetItemTransactionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetItemTransactionsResponseType
#
getItemTransactionsRequest = nil
puts obj.getItemTransactions(getItemTransactionsRequest)

# SYNOPSIS
#   GetItemsAwaitingFeedback(getItemsAwaitingFeedbackRequest)
#
# ARGS
#   getItemsAwaitingFeedbackRequest GetItemsAwaitingFeedbackRequestType - {urn:ebay:apis:eBLBaseComponents}GetItemsAwaitingFeedbackRequestType
#
# RETURNS
#   getItemsAwaitingFeedbackResponse GetItemsAwaitingFeedbackResponseType - {urn:ebay:apis:eBLBaseComponents}GetItemsAwaitingFeedbackResponseType
#
getItemsAwaitingFeedbackRequest = nil
puts obj.getItemsAwaitingFeedback(getItemsAwaitingFeedbackRequest)

# SYNOPSIS
#   GetMemberMessages(getMemberMessagesRequest)
#
# ARGS
#   getMemberMessagesRequest GetMemberMessagesRequestType - {urn:ebay:apis:eBLBaseComponents}GetMemberMessagesRequestType
#
# RETURNS
#   getMemberMessagesResponse GetMemberMessagesResponseType - {urn:ebay:apis:eBLBaseComponents}GetMemberMessagesResponseType
#
getMemberMessagesRequest = nil
puts obj.getMemberMessages(getMemberMessagesRequest)

# SYNOPSIS
#   GetMessagePreferences(getMessagePreferencesRequest)
#
# ARGS
#   getMessagePreferencesRequest GetMessagePreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}GetMessagePreferencesRequestType
#
# RETURNS
#   getMessagePreferencesResponse GetMessagePreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}GetMessagePreferencesResponseType
#
getMessagePreferencesRequest = nil
puts obj.getMessagePreferences(getMessagePreferencesRequest)

# SYNOPSIS
#   GetMyMessages(getMyMessagesRequest)
#
# ARGS
#   getMyMessagesRequest GetMyMessagesRequestType - {urn:ebay:apis:eBLBaseComponents}GetMyMessagesRequestType
#
# RETURNS
#   getMyMessagesResponse GetMyMessagesResponseType - {urn:ebay:apis:eBLBaseComponents}GetMyMessagesResponseType
#
getMyMessagesRequest = nil
puts obj.getMyMessages(getMyMessagesRequest)

# SYNOPSIS
#   GetMyeBayBuying(getMyeBayBuyingRequest)
#
# ARGS
#   getMyeBayBuyingRequest GetMyeBayBuyingRequestType - {urn:ebay:apis:eBLBaseComponents}GetMyeBayBuyingRequestType
#
# RETURNS
#   getMyeBayBuyingResponse GetMyeBayBuyingResponseType - {urn:ebay:apis:eBLBaseComponents}GetMyeBayBuyingResponseType
#
getMyeBayBuyingRequest = nil
puts obj.getMyeBayBuying(getMyeBayBuyingRequest)

# SYNOPSIS
#   GetMyeBayReminders(getMyeBayRemindersRequest)
#
# ARGS
#   getMyeBayRemindersRequest GetMyeBayRemindersRequestType - {urn:ebay:apis:eBLBaseComponents}GetMyeBayRemindersRequestType
#
# RETURNS
#   getMyeBayRemindersResponse GetMyeBayRemindersResponseType - {urn:ebay:apis:eBLBaseComponents}GetMyeBayRemindersResponseType
#
getMyeBayRemindersRequest = nil
puts obj.getMyeBayReminders(getMyeBayRemindersRequest)

# SYNOPSIS
#   GetMyeBaySelling(getMyeBaySellingRequest)
#
# ARGS
#   getMyeBaySellingRequest GetMyeBaySellingRequestType - {urn:ebay:apis:eBLBaseComponents}GetMyeBaySellingRequestType
#
# RETURNS
#   getMyeBaySellingResponse GetMyeBaySellingResponseType - {urn:ebay:apis:eBLBaseComponents}GetMyeBaySellingResponseType
#
getMyeBaySellingRequest = nil
puts obj.getMyeBaySelling(getMyeBaySellingRequest)

# SYNOPSIS
#   GetNotificationPreferences(getNotificationPreferencesRequest)
#
# ARGS
#   getNotificationPreferencesRequest GetNotificationPreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}GetNotificationPreferencesRequestType
#
# RETURNS
#   getNotificationPreferencesResponse GetNotificationPreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}GetNotificationPreferencesResponseType
#
getNotificationPreferencesRequest = nil
puts obj.getNotificationPreferences(getNotificationPreferencesRequest)

# SYNOPSIS
#   GetNotificationsUsage(getNotificationsUsageRequest)
#
# ARGS
#   getNotificationsUsageRequest GetNotificationsUsageRequestType - {urn:ebay:apis:eBLBaseComponents}GetNotificationsUsageRequestType
#
# RETURNS
#   getNotificationsUsageResponse GetNotificationsUsageResponseType - {urn:ebay:apis:eBLBaseComponents}GetNotificationsUsageResponseType
#
getNotificationsUsageRequest = nil
puts obj.getNotificationsUsage(getNotificationsUsageRequest)

# SYNOPSIS
#   GetOrderTransactions(getOrderTransactionsRequest)
#
# ARGS
#   getOrderTransactionsRequest GetOrderTransactionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetOrderTransactionsRequestType
#
# RETURNS
#   getOrderTransactionsResponse GetOrderTransactionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetOrderTransactionsResponseType
#
getOrderTransactionsRequest = nil
puts obj.getOrderTransactions(getOrderTransactionsRequest)

# SYNOPSIS
#   GetOrders(getOrdersRequest)
#
# ARGS
#   getOrdersRequest GetOrdersRequestType - {urn:ebay:apis:eBLBaseComponents}GetOrdersRequestType
#
# RETURNS
#   getOrdersResponse GetOrdersResponseType - {urn:ebay:apis:eBLBaseComponents}GetOrdersResponseType
#
getOrdersRequest = nil
puts obj.getOrders(getOrdersRequest)

# SYNOPSIS
#   GetPictureManagerDetails(getPictureManagerDetailsRequest)
#
# ARGS
#   getPictureManagerDetailsRequest GetPictureManagerDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}GetPictureManagerDetailsRequestType
#
# RETURNS
#   getPictureManagerDetailsResponse GetPictureManagerDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}GetPictureManagerDetailsResponseType
#
getPictureManagerDetailsRequest = nil
puts obj.getPictureManagerDetails(getPictureManagerDetailsRequest)

# SYNOPSIS
#   GetPictureManagerOptions(getPictureManagerOptionsRequest)
#
# ARGS
#   getPictureManagerOptionsRequest GetPictureManagerOptionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetPictureManagerOptionsRequestType
#
# RETURNS
#   getPictureManagerOptionsResponse GetPictureManagerOptionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetPictureManagerOptionsResponseType
#
getPictureManagerOptionsRequest = nil
puts obj.getPictureManagerOptions(getPictureManagerOptionsRequest)

# SYNOPSIS
#   GetPopularKeywords(getPopularKeywordsRequest)
#
# ARGS
#   getPopularKeywordsRequest GetPopularKeywordsRequestType - {urn:ebay:apis:eBLBaseComponents}GetPopularKeywordsRequestType
#
# RETURNS
#   getPopularKeywordsResponse GetPopularKeywordsResponseType - {urn:ebay:apis:eBLBaseComponents}GetPopularKeywordsResponseType
#
getPopularKeywordsRequest = nil
puts obj.getPopularKeywords(getPopularKeywordsRequest)

# SYNOPSIS
#   GetProductFamilyMembers(getProductFamilyMembersRequest)
#
# ARGS
#   getProductFamilyMembersRequest GetProductFamilyMembersRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductFamilyMembersRequestType
#
# RETURNS
#   getProductFamilyMembersResponse GetProductFamilyMembersResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductFamilyMembersResponseType
#
getProductFamilyMembersRequest = nil
puts obj.getProductFamilyMembers(getProductFamilyMembersRequest)

# SYNOPSIS
#   GetProductFinder(getProductFinderRequest)
#
# ARGS
#   getProductFinderRequest GetProductFinderRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductFinderRequestType
#
# RETURNS
#   getProductFinderResponse GetProductFinderResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductFinderResponseType
#
getProductFinderRequest = nil
puts obj.getProductFinder(getProductFinderRequest)

# SYNOPSIS
#   GetProductFinderXSL(getProductFinderXSLRequest)
#
# ARGS
#   getProductFinderXSLRequest GetProductFinderXSLRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductFinderXSLRequestType
#
# RETURNS
#   getProductFinderXSLResponse GetProductFinderXSLResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductFinderXSLResponseType
#
getProductFinderXSLRequest = nil
puts obj.getProductFinderXSL(getProductFinderXSLRequest)

# SYNOPSIS
#   GetProductSearchPage(getProductSearchPageRequest)
#
# ARGS
#   getProductSearchPageRequest GetProductSearchPageRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductSearchPageRequestType
#
# RETURNS
#   getProductSearchPageResponse GetProductSearchPageResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductSearchPageResponseType
#
getProductSearchPageRequest = nil
puts obj.getProductSearchPage(getProductSearchPageRequest)

# SYNOPSIS
#   GetProductSearchResults(getProductSearchResultsRequest)
#
# ARGS
#   getProductSearchResultsRequest GetProductSearchResultsRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductSearchResultsRequestType
#
# RETURNS
#   getProductSearchResultsResponse GetProductSearchResultsResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductSearchResultsResponseType
#
getProductSearchResultsRequest = nil
puts obj.getProductSearchResults(getProductSearchResultsRequest)

# SYNOPSIS
#   GetProductSellingPages(getProductSellingPagesRequest)
#
# ARGS
#   getProductSellingPagesRequest GetProductSellingPagesRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductSellingPagesRequestType
#
# RETURNS
#   getProductSellingPagesResponse GetProductSellingPagesResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductSellingPagesResponseType
#
getProductSellingPagesRequest = nil
puts obj.getProductSellingPages(getProductSellingPagesRequest)

# SYNOPSIS
#   GetProducts(getProductsRequest)
#
# ARGS
#   getProductsRequest GetProductsRequestType - {urn:ebay:apis:eBLBaseComponents}GetProductsRequestType
#
# RETURNS
#   getProductsResponse GetProductsResponseType - {urn:ebay:apis:eBLBaseComponents}GetProductsResponseType
#
getProductsRequest = nil
puts obj.getProducts(getProductsRequest)

# SYNOPSIS
#   GetPromotionRules(getPromotionRulesRequest)
#
# ARGS
#   getPromotionRulesRequest GetPromotionRulesRequestType - {urn:ebay:apis:eBLBaseComponents}GetPromotionRulesRequestType
#
# RETURNS
#   getPromotionRulesResponse GetPromotionRulesResponseType - {urn:ebay:apis:eBLBaseComponents}GetPromotionRulesResponseType
#
getPromotionRulesRequest = nil
puts obj.getPromotionRules(getPromotionRulesRequest)

# SYNOPSIS
#   GetPromotionalSaleDetails(getPromotionalSaleDetailsRequest)
#
# ARGS
#   getPromotionalSaleDetailsRequest GetPromotionalSaleDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}GetPromotionalSaleDetailsRequestType
#
# RETURNS
#   getPromotionalSaleDetailsResponse GetPromotionalSaleDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}GetPromotionalSaleDetailsResponseType
#
getPromotionalSaleDetailsRequest = nil
puts obj.getPromotionalSaleDetails(getPromotionalSaleDetailsRequest)

# SYNOPSIS
#   GetSearchResults(getSearchResultsRequest)
#
# ARGS
#   getSearchResultsRequest GetSearchResultsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSearchResultsRequestType
#
# RETURNS
#   getSearchResultsResponse GetSearchResultsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSearchResultsResponseType
#
getSearchResultsRequest = nil
puts obj.getSearchResults(getSearchResultsRequest)

# SYNOPSIS
#   GetSellerDashboard(getSellerDashboardRequest)
#
# ARGS
#   getSellerDashboardRequest GetSellerDashboardRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellerDashboardRequestType
#
# RETURNS
#   getSellerDashboardResponse GetSellerDashboardResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellerDashboardResponseType
#
getSellerDashboardRequest = nil
puts obj.getSellerDashboard(getSellerDashboardRequest)

# SYNOPSIS
#   GetSellerEvents(getSellerEventsRequest)
#
# ARGS
#   getSellerEventsRequest GetSellerEventsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellerEventsRequestType
#
# RETURNS
#   getSellerEventsResponse GetSellerEventsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellerEventsResponseType
#
getSellerEventsRequest = nil
puts obj.getSellerEvents(getSellerEventsRequest)

# SYNOPSIS
#   GetSellerList(getSellerListRequest)
#
# ARGS
#   getSellerListRequest GetSellerListRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellerListRequestType
#
# RETURNS
#   getSellerListResponse GetSellerListResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellerListResponseType
#
getSellerListRequest = nil
puts obj.getSellerList(getSellerListRequest)

# SYNOPSIS
#   GetSellerPayments(getSellerPaymentsRequest)
#
# ARGS
#   getSellerPaymentsRequest GetSellerPaymentsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellerPaymentsRequestType
#
# RETURNS
#   getSellerPaymentsResponse GetSellerPaymentsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellerPaymentsResponseType
#
getSellerPaymentsRequest = nil
puts obj.getSellerPayments(getSellerPaymentsRequest)

# SYNOPSIS
#   GetSellerTransactions(getSellerTransactionsRequest)
#
# ARGS
#   getSellerTransactionsRequest GetSellerTransactionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellerTransactionsRequestType
#
# RETURNS
#   getSellerTransactionsResponse GetSellerTransactionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellerTransactionsResponseType
#
getSellerTransactionsRequest = nil
puts obj.getSellerTransactions(getSellerTransactionsRequest)

# SYNOPSIS
#   GetSellingManagerAlerts(getSellingManagerAlertsRequest)
#
# ARGS
#   getSellingManagerAlertsRequest GetSellingManagerAlertsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerAlertsRequestType
#
# RETURNS
#   getSellingManagerAlertsResponse GetSellingManagerAlertsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerAlertsResponseType
#
getSellingManagerAlertsRequest = nil
puts obj.getSellingManagerAlerts(getSellingManagerAlertsRequest)

# SYNOPSIS
#   GetSellingManagerEmailLog(getSellingManagerEmailLogRequest)
#
# ARGS
#   getSellingManagerEmailLogRequest GetSellingManagerEmailLogRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerEmailLogRequestType
#
# RETURNS
#   getSellingManagerEmailLogResponse GetSellingManagerEmailLogResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerEmailLogResponseType
#
getSellingManagerEmailLogRequest = nil
puts obj.getSellingManagerEmailLog(getSellingManagerEmailLogRequest)

# SYNOPSIS
#   GetSellingManagerInventory(getSellingManagerInventoryRequest)
#
# ARGS
#   getSellingManagerInventoryRequest GetSellingManagerInventoryRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerInventoryRequestType
#
# RETURNS
#   getSellingManagerInventoryResponse GetSellingManagerInventoryResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerInventoryResponseType
#
getSellingManagerInventoryRequest = nil
puts obj.getSellingManagerInventory(getSellingManagerInventoryRequest)

# SYNOPSIS
#   GetSellingManagerInventoryFolder(getSellingManagerInventoryFolderRequest)
#
# ARGS
#   getSellingManagerInventoryFolderRequest GetSellingManagerInventoryFolderRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerInventoryFolderRequestType
#
# RETURNS
#   getSellingManagerInventoryFolderResponse GetSellingManagerInventoryFolderResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerInventoryFolderResponseType
#
getSellingManagerInventoryFolderRequest = nil
puts obj.getSellingManagerInventoryFolder(getSellingManagerInventoryFolderRequest)

# SYNOPSIS
#   GetSellingManagerItemAutomationRule(getSellingManagerItemAutomationRuleRequest)
#
# ARGS
#   getSellingManagerItemAutomationRuleRequest GetSellingManagerItemAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerItemAutomationRuleRequestType
#
# RETURNS
#   getSellingManagerItemAutomationRuleResponse GetSellingManagerItemAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerItemAutomationRuleResponseType
#
getSellingManagerItemAutomationRuleRequest = nil
puts obj.getSellingManagerItemAutomationRule(getSellingManagerItemAutomationRuleRequest)

# SYNOPSIS
#   GetSellingManagerSaleRecord(getSellingManagerSaleRecordRequest)
#
# ARGS
#   getSellingManagerSaleRecordRequest GetSellingManagerSaleRecordRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerSaleRecordRequestType
#
# RETURNS
#   getSellingManagerSaleRecordResponse GetSellingManagerSaleRecordResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerSaleRecordResponseType
#
getSellingManagerSaleRecordRequest = nil
puts obj.getSellingManagerSaleRecord(getSellingManagerSaleRecordRequest)

# SYNOPSIS
#   GetSellingManagerSoldListings(getSellingManagerSoldListingsRequest)
#
# ARGS
#   getSellingManagerSoldListingsRequest GetSellingManagerSoldListingsRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerSoldListingsRequestType
#
# RETURNS
#   getSellingManagerSoldListingsResponse GetSellingManagerSoldListingsResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerSoldListingsResponseType
#
getSellingManagerSoldListingsRequest = nil
puts obj.getSellingManagerSoldListings(getSellingManagerSoldListingsRequest)

# SYNOPSIS
#   GetSellingManagerTemplateAutomationRule(getSellingManagerTemplateAutomationRuleRequest)
#
# ARGS
#   getSellingManagerTemplateAutomationRuleRequest GetSellingManagerTemplateAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerTemplateAutomationRuleRequestType
#
# RETURNS
#   getSellingManagerTemplateAutomationRuleResponse GetSellingManagerTemplateAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerTemplateAutomationRuleResponseType
#
getSellingManagerTemplateAutomationRuleRequest = nil
puts obj.getSellingManagerTemplateAutomationRule(getSellingManagerTemplateAutomationRuleRequest)

# SYNOPSIS
#   GetSellingManagerTemplates(getSellingManagerTemplatesRequest)
#
# ARGS
#   getSellingManagerTemplatesRequest GetSellingManagerTemplatesRequestType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerTemplatesRequestType
#
# RETURNS
#   getSellingManagerTemplatesResponse GetSellingManagerTemplatesResponseType - {urn:ebay:apis:eBLBaseComponents}GetSellingManagerTemplatesResponseType
#
getSellingManagerTemplatesRequest = nil
puts obj.getSellingManagerTemplates(getSellingManagerTemplatesRequest)

# SYNOPSIS
#   GetSessionID(getSessionIDRequest)
#
# ARGS
#   getSessionIDRequest GetSessionIDRequestType - {urn:ebay:apis:eBLBaseComponents}GetSessionIDRequestType
#
# RETURNS
#   getSessionIDResponse GetSessionIDResponseType - {urn:ebay:apis:eBLBaseComponents}GetSessionIDResponseType
#
getSessionIDRequest = nil
puts obj.getSessionID(getSessionIDRequest)

# SYNOPSIS
#   GetShippingDiscountProfiles(getShippingDiscountProfilesRequest)
#
# ARGS
#   getShippingDiscountProfilesRequest GetShippingDiscountProfilesRequestType - {urn:ebay:apis:eBLBaseComponents}GetShippingDiscountProfilesRequestType
#
# RETURNS
#   getShippingDiscountProfilesResponse GetShippingDiscountProfilesResponseType - {urn:ebay:apis:eBLBaseComponents}GetShippingDiscountProfilesResponseType
#
getShippingDiscountProfilesRequest = nil
puts obj.getShippingDiscountProfiles(getShippingDiscountProfilesRequest)

# SYNOPSIS
#   GetStore(getStoreRequest)
#
# ARGS
#   getStoreRequest GetStoreRequestType - {urn:ebay:apis:eBLBaseComponents}GetStoreRequestType
#
# RETURNS
#   getStoreResponse GetStoreResponseType - {urn:ebay:apis:eBLBaseComponents}GetStoreResponseType
#
getStoreRequest = nil
puts obj.getStore(getStoreRequest)

# SYNOPSIS
#   GetStoreCategoryUpdateStatus(getStoreCategoryUpdateStatusRequest)
#
# ARGS
#   getStoreCategoryUpdateStatusRequest GetStoreCategoryUpdateStatusRequestType - {urn:ebay:apis:eBLBaseComponents}GetStoreCategoryUpdateStatusRequestType
#
# RETURNS
#   getStoreCategoryUpdateStatusResponse GetStoreCategoryUpdateStatusResponseType - {urn:ebay:apis:eBLBaseComponents}GetStoreCategoryUpdateStatusResponseType
#
getStoreCategoryUpdateStatusRequest = nil
puts obj.getStoreCategoryUpdateStatus(getStoreCategoryUpdateStatusRequest)

# SYNOPSIS
#   GetStoreCustomPage(getStoreCustomPageRequest)
#
# ARGS
#   getStoreCustomPageRequest GetStoreCustomPageRequestType - {urn:ebay:apis:eBLBaseComponents}GetStoreCustomPageRequestType
#
# RETURNS
#   getStoreCustomPageResponse GetStoreCustomPageResponseType - {urn:ebay:apis:eBLBaseComponents}GetStoreCustomPageResponseType
#
getStoreCustomPageRequest = nil
puts obj.getStoreCustomPage(getStoreCustomPageRequest)

# SYNOPSIS
#   GetStoreOptions(getStoreOptionsRequest)
#
# ARGS
#   getStoreOptionsRequest GetStoreOptionsRequestType - {urn:ebay:apis:eBLBaseComponents}GetStoreOptionsRequestType
#
# RETURNS
#   getStoreOptionsResponse GetStoreOptionsResponseType - {urn:ebay:apis:eBLBaseComponents}GetStoreOptionsResponseType
#
getStoreOptionsRequest = nil
puts obj.getStoreOptions(getStoreOptionsRequest)

# SYNOPSIS
#   GetStorePreferences(getStorePreferencesRequest)
#
# ARGS
#   getStorePreferencesRequest GetStorePreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}GetStorePreferencesRequestType
#
# RETURNS
#   getStorePreferencesResponse GetStorePreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}GetStorePreferencesResponseType
#
getStorePreferencesRequest = nil
puts obj.getStorePreferences(getStorePreferencesRequest)

# SYNOPSIS
#   GetSuggestedCategories(getSuggestedCategoriesRequest)
#
# ARGS
#   getSuggestedCategoriesRequest GetSuggestedCategoriesRequestType - {urn:ebay:apis:eBLBaseComponents}GetSuggestedCategoriesRequestType
#
# RETURNS
#   getSuggestedCategoriesResponse GetSuggestedCategoriesResponseType - {urn:ebay:apis:eBLBaseComponents}GetSuggestedCategoriesResponseType
#
getSuggestedCategoriesRequest = nil
puts obj.getSuggestedCategories(getSuggestedCategoriesRequest)

# SYNOPSIS
#   GetTaxTable(getTaxTableRequest)
#
# ARGS
#   getTaxTableRequest GetTaxTableRequestType - {urn:ebay:apis:eBLBaseComponents}GetTaxTableRequestType
#
# RETURNS
#   getTaxTableResponse GetTaxTableResponseType - {urn:ebay:apis:eBLBaseComponents}GetTaxTableResponseType
#
getTaxTableRequest = nil
puts obj.getTaxTable(getTaxTableRequest)

# SYNOPSIS
#   GetTokenStatus(getTokenStatusRequest)
#
# ARGS
#   getTokenStatusRequest GetTokenStatusRequestType - {urn:ebay:apis:eBLBaseComponents}GetTokenStatusRequestType
#
# RETURNS
#   getTokenStatusResponse GetTokenStatusResponseType - {urn:ebay:apis:eBLBaseComponents}GetTokenStatusResponseType
#
getTokenStatusRequest = nil
puts obj.getTokenStatus(getTokenStatusRequest)

# SYNOPSIS
#   GetUser(getUserRequest)
#
# ARGS
#   getUserRequest  GetUserRequestType - {urn:ebay:apis:eBLBaseComponents}GetUserRequestType
#
# RETURNS
#   getUserResponse GetUserResponseType - {urn:ebay:apis:eBLBaseComponents}GetUserResponseType
#
getUserRequest = nil
puts obj.getUser(getUserRequest)

# SYNOPSIS
#   GetUserContactDetails(getUserContactDetailsRequest)
#
# ARGS
#   getUserContactDetailsRequest GetUserContactDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}GetUserContactDetailsRequestType
#
# RETURNS
#   getUserContactDetailsResponse GetUserContactDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}GetUserContactDetailsResponseType
#
getUserContactDetailsRequest = nil
puts obj.getUserContactDetails(getUserContactDetailsRequest)

# SYNOPSIS
#   GetUserDisputes(getUserDisputesRequest)
#
# ARGS
#   getUserDisputesRequest GetUserDisputesRequestType - {urn:ebay:apis:eBLBaseComponents}GetUserDisputesRequestType
#
# RETURNS
#   getUserDisputesResponse GetUserDisputesResponseType - {urn:ebay:apis:eBLBaseComponents}GetUserDisputesResponseType
#
getUserDisputesRequest = nil
puts obj.getUserDisputes(getUserDisputesRequest)

# SYNOPSIS
#   GetUserPreferences(getUserPreferencesRequest)
#
# ARGS
#   getUserPreferencesRequest GetUserPreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}GetUserPreferencesRequestType
#
# RETURNS
#   getUserPreferencesResponse GetUserPreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}GetUserPreferencesResponseType
#
getUserPreferencesRequest = nil
puts obj.getUserPreferences(getUserPreferencesRequest)

# SYNOPSIS
#   GetVeROReasonCodeDetails(getVeROReasonCodeDetailsRequest)
#
# ARGS
#   getVeROReasonCodeDetailsRequest GetVeROReasonCodeDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}GetVeROReasonCodeDetailsRequestType
#
# RETURNS
#   getVeROReasonCodeDetailsResponse GetVeROReasonCodeDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}GetVeROReasonCodeDetailsResponseType
#
getVeROReasonCodeDetailsRequest = nil
puts obj.getVeROReasonCodeDetails(getVeROReasonCodeDetailsRequest)

# SYNOPSIS
#   GetVeROReportStatus(getVeROReportStatusRequest)
#
# ARGS
#   getVeROReportStatusRequest GetVeROReportStatusRequestType - {urn:ebay:apis:eBLBaseComponents}GetVeROReportStatusRequestType
#
# RETURNS
#   getVeROReportStatusResponse GetVeROReportStatusResponseType - {urn:ebay:apis:eBLBaseComponents}GetVeROReportStatusResponseType
#
getVeROReportStatusRequest = nil
puts obj.getVeROReportStatus(getVeROReportStatusRequest)

# SYNOPSIS
#   GetWantItNowPost(getWantItNowPostRequest)
#
# ARGS
#   getWantItNowPostRequest GetWantItNowPostRequestType - {urn:ebay:apis:eBLBaseComponents}GetWantItNowPostRequestType
#
# RETURNS
#   getWantItNowPostResponse GetWantItNowPostResponseType - {urn:ebay:apis:eBLBaseComponents}GetWantItNowPostResponseType
#
getWantItNowPostRequest = nil
puts obj.getWantItNowPost(getWantItNowPostRequest)

# SYNOPSIS
#   GetWantItNowSearchResults(getWantItNowSearchResultsRequest)
#
# ARGS
#   getWantItNowSearchResultsRequest GetWantItNowSearchResultsRequestType - {urn:ebay:apis:eBLBaseComponents}GetWantItNowSearchResultsRequestType
#
# RETURNS
#   getWantItNowSearchResultsResponse GetWantItNowSearchResultsResponseType - {urn:ebay:apis:eBLBaseComponents}GetWantItNowSearchResultsResponseType
#
getWantItNowSearchResultsRequest = nil
puts obj.getWantItNowSearchResults(getWantItNowSearchResultsRequest)

# SYNOPSIS
#   GeteBayDetails(geteBayDetailsRequest)
#
# ARGS
#   geteBayDetailsRequest GeteBayDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}GeteBayDetailsRequestType
#
# RETURNS
#   geteBayDetailsResponse GeteBayDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}GeteBayDetailsResponseType
#
geteBayDetailsRequest = nil
puts obj.geteBayDetails(geteBayDetailsRequest)

# SYNOPSIS
#   GeteBayOfficialTime(geteBayOfficialTimeRequest)
#
# ARGS
#   geteBayOfficialTimeRequest GeteBayOfficialTimeRequestType - {urn:ebay:apis:eBLBaseComponents}GeteBayOfficialTimeRequestType
#
# RETURNS
#   geteBayOfficialTimeResponse GeteBayOfficialTimeResponseType - {urn:ebay:apis:eBLBaseComponents}GeteBayOfficialTimeResponseType
#
geteBayOfficialTimeRequest = nil
puts obj.geteBayOfficialTime(geteBayOfficialTimeRequest)

# SYNOPSIS
#   IssueRefund(issueRefundRequest)
#
# ARGS
#   issueRefundRequest IssueRefundRequestType - {urn:ebay:apis:eBLBaseComponents}IssueRefundRequestType
#
# RETURNS
#   issueRefundResponse IssueRefundResponseType - {urn:ebay:apis:eBLBaseComponents}IssueRefundResponseType
#
issueRefundRequest = nil
puts obj.issueRefund(issueRefundRequest)

# SYNOPSIS
#   LeaveFeedback(leaveFeedbackRequest)
#
# ARGS
#   leaveFeedbackRequest LeaveFeedbackRequestType - {urn:ebay:apis:eBLBaseComponents}LeaveFeedbackRequestType
#
# RETURNS
#   leaveFeedbackResponse LeaveFeedbackResponseType - {urn:ebay:apis:eBLBaseComponents}LeaveFeedbackResponseType
#
leaveFeedbackRequest = nil
puts obj.leaveFeedback(leaveFeedbackRequest)

# SYNOPSIS
#   MoveSellingManagerInventoryFolder(moveSellingManagerInventoryFolderRequest)
#
# ARGS
#   moveSellingManagerInventoryFolderRequest MoveSellingManagerInventoryFolderRequestType - {urn:ebay:apis:eBLBaseComponents}MoveSellingManagerInventoryFolderRequestType
#
# RETURNS
#   moveSellingManagerInventoryFolderResponse MoveSellingManagerInventoryFolderResponseType - {urn:ebay:apis:eBLBaseComponents}MoveSellingManagerInventoryFolderResponseType
#
moveSellingManagerInventoryFolderRequest = nil
puts obj.moveSellingManagerInventoryFolder(moveSellingManagerInventoryFolderRequest)

# SYNOPSIS
#   PlaceOffer(placeOfferRequest)
#
# ARGS
#   placeOfferRequest PlaceOfferRequestType - {urn:ebay:apis:eBLBaseComponents}PlaceOfferRequestType
#
# RETURNS
#   placeOfferResponse PlaceOfferResponseType - {urn:ebay:apis:eBLBaseComponents}PlaceOfferResponseType
#
placeOfferRequest = nil
puts obj.placeOffer(placeOfferRequest)

# SYNOPSIS
#   RelistFixedPriceItem(relistFixedPriceItemRequest)
#
# ARGS
#   relistFixedPriceItemRequest RelistFixedPriceItemRequestType - {urn:ebay:apis:eBLBaseComponents}RelistFixedPriceItemRequestType
#
# RETURNS
#   relistFixedPriceItemResponse RelistFixedPriceItemResponseType - {urn:ebay:apis:eBLBaseComponents}RelistFixedPriceItemResponseType
#
relistFixedPriceItemRequest = nil
puts obj.relistFixedPriceItem(relistFixedPriceItemRequest)

# SYNOPSIS
#   RelistItem(relistItemRequest)
#
# ARGS
#   relistItemRequest RelistItemRequestType - {urn:ebay:apis:eBLBaseComponents}RelistItemRequestType
#
# RETURNS
#   relistItemResponse RelistItemResponseType - {urn:ebay:apis:eBLBaseComponents}RelistItemResponseType
#
relistItemRequest = nil
puts obj.relistItem(relistItemRequest)

# SYNOPSIS
#   RemoveFromWatchList(removeFromWatchListRequest)
#
# ARGS
#   removeFromWatchListRequest RemoveFromWatchListRequestType - {urn:ebay:apis:eBLBaseComponents}RemoveFromWatchListRequestType
#
# RETURNS
#   removeFromWatchListResponse RemoveFromWatchListResponseType - {urn:ebay:apis:eBLBaseComponents}RemoveFromWatchListResponseType
#
removeFromWatchListRequest = nil
puts obj.removeFromWatchList(removeFromWatchListRequest)

# SYNOPSIS
#   RespondToBestOffer(respondToBestOfferRequest)
#
# ARGS
#   respondToBestOfferRequest RespondToBestOfferRequestType - {urn:ebay:apis:eBLBaseComponents}RespondToBestOfferRequestType
#
# RETURNS
#   respondToBestOfferResponse RespondToBestOfferResponseType - {urn:ebay:apis:eBLBaseComponents}RespondToBestOfferResponseType
#
respondToBestOfferRequest = nil
puts obj.respondToBestOffer(respondToBestOfferRequest)

# SYNOPSIS
#   RespondToFeedback(respondToFeedbackRequest)
#
# ARGS
#   respondToFeedbackRequest RespondToFeedbackRequestType - {urn:ebay:apis:eBLBaseComponents}RespondToFeedbackRequestType
#
# RETURNS
#   respondToFeedbackResponse RespondToFeedbackResponseType - {urn:ebay:apis:eBLBaseComponents}RespondToFeedbackResponseType
#
respondToFeedbackRequest = nil
puts obj.respondToFeedback(respondToFeedbackRequest)

# SYNOPSIS
#   RespondToWantItNowPost(respondToWantItNowPostRequest)
#
# ARGS
#   respondToWantItNowPostRequest RespondToWantItNowPostRequestType - {urn:ebay:apis:eBLBaseComponents}RespondToWantItNowPostRequestType
#
# RETURNS
#   respondToWantItNowPostResponse RespondToWantItNowPostResponseType - {urn:ebay:apis:eBLBaseComponents}RespondToWantItNowPostResponseType
#
respondToWantItNowPostRequest = nil
puts obj.respondToWantItNowPost(respondToWantItNowPostRequest)

# SYNOPSIS
#   ReviseCheckoutStatus(reviseCheckoutStatusRequest)
#
# ARGS
#   reviseCheckoutStatusRequest ReviseCheckoutStatusRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseCheckoutStatusRequestType
#
# RETURNS
#   reviseCheckoutStatusResponse ReviseCheckoutStatusResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseCheckoutStatusResponseType
#
reviseCheckoutStatusRequest = nil
puts obj.reviseCheckoutStatus(reviseCheckoutStatusRequest)

# SYNOPSIS
#   ReviseFixedPriceItem(reviseFixedPriceItemRequest)
#
# ARGS
#   reviseFixedPriceItemRequest ReviseFixedPriceItemRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseFixedPriceItemRequestType
#
# RETURNS
#   reviseFixedPriceItemResponse ReviseFixedPriceItemResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseFixedPriceItemResponseType
#
reviseFixedPriceItemRequest = nil
puts obj.reviseFixedPriceItem(reviseFixedPriceItemRequest)

# SYNOPSIS
#   ReviseInventoryStatus(reviseInventoryStatusRequest)
#
# ARGS
#   reviseInventoryStatusRequest ReviseInventoryStatusRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseInventoryStatusRequestType
#
# RETURNS
#   reviseInventoryStatusResponse ReviseInventoryStatusResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseInventoryStatusResponseType
#
reviseInventoryStatusRequest = nil
puts obj.reviseInventoryStatus(reviseInventoryStatusRequest)

# SYNOPSIS
#   ReviseItem(reviseItemRequest)
#
# ARGS
#   reviseItemRequest ReviseItemRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseItemRequestType
#
# RETURNS
#   reviseItemResponse ReviseItemResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseItemResponseType
#
reviseItemRequest = nil
puts obj.reviseItem(reviseItemRequest)

# SYNOPSIS
#   ReviseMyMessages(reviseMyMessagesRequest)
#
# ARGS
#   reviseMyMessagesRequest ReviseMyMessagesRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseMyMessagesRequestType
#
# RETURNS
#   reviseMyMessagesResponse ReviseMyMessagesResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseMyMessagesResponseType
#
reviseMyMessagesRequest = nil
puts obj.reviseMyMessages(reviseMyMessagesRequest)

# SYNOPSIS
#   ReviseMyMessagesFolders(reviseMyMessagesFoldersRequest)
#
# ARGS
#   reviseMyMessagesFoldersRequest ReviseMyMessagesFoldersRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseMyMessagesFoldersRequestType
#
# RETURNS
#   reviseMyMessagesFoldersResponse ReviseMyMessagesFoldersResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseMyMessagesFoldersResponseType
#
reviseMyMessagesFoldersRequest = nil
puts obj.reviseMyMessagesFolders(reviseMyMessagesFoldersRequest)

# SYNOPSIS
#   ReviseSellingManagerInventoryFolder(reviseSellingManagerInventoryFolderRequest)
#
# ARGS
#   reviseSellingManagerInventoryFolderRequest ReviseSellingManagerInventoryFolderRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerInventoryFolderRequestType
#
# RETURNS
#   reviseSellingManagerInventoryFolderResponse ReviseSellingManagerInventoryFolderResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerInventoryFolderResponseType
#
reviseSellingManagerInventoryFolderRequest = nil
puts obj.reviseSellingManagerInventoryFolder(reviseSellingManagerInventoryFolderRequest)

# SYNOPSIS
#   ReviseSellingManagerProduct(reviseSellingManagerProductRequest)
#
# ARGS
#   reviseSellingManagerProductRequest ReviseSellingManagerProductRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerProductRequestType
#
# RETURNS
#   reviseSellingManagerProductResponse ReviseSellingManagerProductResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerProductResponseType
#
reviseSellingManagerProductRequest = nil
puts obj.reviseSellingManagerProduct(reviseSellingManagerProductRequest)

# SYNOPSIS
#   ReviseSellingManagerSaleRecord(reviseSellingManagerSaleRecordRequest)
#
# ARGS
#   reviseSellingManagerSaleRecordRequest ReviseSellingManagerSaleRecordRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerSaleRecordRequestType
#
# RETURNS
#   reviseSellingManagerSaleRecordResponse ReviseSellingManagerSaleRecordResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerSaleRecordResponseType
#
reviseSellingManagerSaleRecordRequest = nil
puts obj.reviseSellingManagerSaleRecord(reviseSellingManagerSaleRecordRequest)

# SYNOPSIS
#   ReviseSellingManagerTemplate(reviseSellingManagerTemplateRequest)
#
# ARGS
#   reviseSellingManagerTemplateRequest ReviseSellingManagerTemplateRequestType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerTemplateRequestType
#
# RETURNS
#   reviseSellingManagerTemplateResponse ReviseSellingManagerTemplateResponseType - {urn:ebay:apis:eBLBaseComponents}ReviseSellingManagerTemplateResponseType
#
reviseSellingManagerTemplateRequest = nil
puts obj.reviseSellingManagerTemplate(reviseSellingManagerTemplateRequest)

# SYNOPSIS
#   RevokeToken(revokeTokenRequest)
#
# ARGS
#   revokeTokenRequest RevokeTokenRequestType - {urn:ebay:apis:eBLBaseComponents}RevokeTokenRequestType
#
# RETURNS
#   revokeTokenResponse RevokeTokenResponseType - {urn:ebay:apis:eBLBaseComponents}RevokeTokenResponseType
#
revokeTokenRequest = nil
puts obj.revokeToken(revokeTokenRequest)

# SYNOPSIS
#   SaveItemToSellingManagerTemplate(saveItemToSellingManagerTemplateRequest)
#
# ARGS
#   saveItemToSellingManagerTemplateRequest SaveItemToSellingManagerTemplateRequestType - {urn:ebay:apis:eBLBaseComponents}SaveItemToSellingManagerTemplateRequestType
#
# RETURNS
#   saveItemToSellingManagerTemplateResponse SaveItemToSellingManagerTemplateResponseType - {urn:ebay:apis:eBLBaseComponents}SaveItemToSellingManagerTemplateResponseType
#
saveItemToSellingManagerTemplateRequest = nil
puts obj.saveItemToSellingManagerTemplate(saveItemToSellingManagerTemplateRequest)

# SYNOPSIS
#   SellerReverseDispute(sellerReverseDisputeRequest)
#
# ARGS
#   sellerReverseDisputeRequest SellerReverseDisputeRequestType - {urn:ebay:apis:eBLBaseComponents}SellerReverseDisputeRequestType
#
# RETURNS
#   sellerReverseDisputeResponse SellerReverseDisputeResponseType - {urn:ebay:apis:eBLBaseComponents}SellerReverseDisputeResponseType
#
sellerReverseDisputeRequest = nil
puts obj.sellerReverseDispute(sellerReverseDisputeRequest)

# SYNOPSIS
#   SendInvoice(sendInvoiceRequest)
#
# ARGS
#   sendInvoiceRequest SendInvoiceRequestType - {urn:ebay:apis:eBLBaseComponents}SendInvoiceRequestType
#
# RETURNS
#   sendInvoiceResponse SendInvoiceResponseType - {urn:ebay:apis:eBLBaseComponents}SendInvoiceResponseType
#
sendInvoiceRequest = nil
puts obj.sendInvoice(sendInvoiceRequest)

# SYNOPSIS
#   SetMessagePreferences(setMessagePreferencesRequest)
#
# ARGS
#   setMessagePreferencesRequest SetMessagePreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}SetMessagePreferencesRequestType
#
# RETURNS
#   setMessagePreferencesResponse SetMessagePreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}SetMessagePreferencesResponseType
#
setMessagePreferencesRequest = nil
puts obj.setMessagePreferences(setMessagePreferencesRequest)

# SYNOPSIS
#   SetNotificationPreferences(setNotificationPreferencesRequest)
#
# ARGS
#   setNotificationPreferencesRequest SetNotificationPreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}SetNotificationPreferencesRequestType
#
# RETURNS
#   setNotificationPreferencesResponse SetNotificationPreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}SetNotificationPreferencesResponseType
#
setNotificationPreferencesRequest = nil
puts obj.setNotificationPreferences(setNotificationPreferencesRequest)

# SYNOPSIS
#   SetPictureManagerDetails(setPictureManagerDetailsRequest)
#
# ARGS
#   setPictureManagerDetailsRequest SetPictureManagerDetailsRequestType - {urn:ebay:apis:eBLBaseComponents}SetPictureManagerDetailsRequestType
#
# RETURNS
#   setPictureManagerDetailsResponse SetPictureManagerDetailsResponseType - {urn:ebay:apis:eBLBaseComponents}SetPictureManagerDetailsResponseType
#
setPictureManagerDetailsRequest = nil
puts obj.setPictureManagerDetails(setPictureManagerDetailsRequest)

# SYNOPSIS
#   SetPromotionalSale(setPromotionalSaleRequest)
#
# ARGS
#   setPromotionalSaleRequest SetPromotionalSaleRequestType - {urn:ebay:apis:eBLBaseComponents}SetPromotionalSaleRequestType
#
# RETURNS
#   setPromotionalSaleResponse SetPromotionalSaleResponseType - {urn:ebay:apis:eBLBaseComponents}SetPromotionalSaleResponseType
#
setPromotionalSaleRequest = nil
puts obj.setPromotionalSale(setPromotionalSaleRequest)

# SYNOPSIS
#   SetPromotionalSaleListings(setPromotionalSaleListingsRequest)
#
# ARGS
#   setPromotionalSaleListingsRequest SetPromotionalSaleListingsRequestType - {urn:ebay:apis:eBLBaseComponents}SetPromotionalSaleListingsRequestType
#
# RETURNS
#   setPromotionalSaleListingsResponse SetPromotionalSaleListingsResponseType - {urn:ebay:apis:eBLBaseComponents}SetPromotionalSaleListingsResponseType
#
setPromotionalSaleListingsRequest = nil
puts obj.setPromotionalSaleListings(setPromotionalSaleListingsRequest)

# SYNOPSIS
#   SetSellingManagerFeedbackOptions(setSellingManagerFeedbackOptionsRequest)
#
# ARGS
#   setSellingManagerFeedbackOptionsRequest SetSellingManagerFeedbackOptionsRequestType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerFeedbackOptionsRequestType
#
# RETURNS
#   setSellingManagerFeedbackOptionsResponse SetSellingManagerFeedbackOptionsResponseType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerFeedbackOptionsResponseType
#
setSellingManagerFeedbackOptionsRequest = nil
puts obj.setSellingManagerFeedbackOptions(setSellingManagerFeedbackOptionsRequest)

# SYNOPSIS
#   SetSellingManagerItemAutomationRule(setSellingManagerItemAutomationRuleRequest)
#
# ARGS
#   setSellingManagerItemAutomationRuleRequest SetSellingManagerItemAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerItemAutomationRuleRequestType
#
# RETURNS
#   setSellingManagerItemAutomationRuleResponse SetSellingManagerItemAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerItemAutomationRuleResponseType
#
setSellingManagerItemAutomationRuleRequest = nil
puts obj.setSellingManagerItemAutomationRule(setSellingManagerItemAutomationRuleRequest)

# SYNOPSIS
#   SetSellingManagerTemplateAutomationRule(setSellingManagerTemplateAutomationRuleRequest)
#
# ARGS
#   setSellingManagerTemplateAutomationRuleRequest SetSellingManagerTemplateAutomationRuleRequestType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerTemplateAutomationRuleRequestType
#
# RETURNS
#   setSellingManagerTemplateAutomationRuleResponse SetSellingManagerTemplateAutomationRuleResponseType - {urn:ebay:apis:eBLBaseComponents}SetSellingManagerTemplateAutomationRuleResponseType
#
setSellingManagerTemplateAutomationRuleRequest = nil
puts obj.setSellingManagerTemplateAutomationRule(setSellingManagerTemplateAutomationRuleRequest)

# SYNOPSIS
#   SetShippingDiscountProfiles(setShippingDiscountProfilesRequest)
#
# ARGS
#   setShippingDiscountProfilesRequest SetShippingDiscountProfilesRequestType - {urn:ebay:apis:eBLBaseComponents}SetShippingDiscountProfilesRequestType
#
# RETURNS
#   setShippingDiscountProfilesResponse SetShippingDiscountProfilesResponseType - {urn:ebay:apis:eBLBaseComponents}SetShippingDiscountProfilesResponseType
#
setShippingDiscountProfilesRequest = nil
puts obj.setShippingDiscountProfiles(setShippingDiscountProfilesRequest)

# SYNOPSIS
#   SetStore(setStoreRequest)
#
# ARGS
#   setStoreRequest SetStoreRequestType - {urn:ebay:apis:eBLBaseComponents}SetStoreRequestType
#
# RETURNS
#   setStoreResponse SetStoreResponseType - {urn:ebay:apis:eBLBaseComponents}SetStoreResponseType
#
setStoreRequest = nil
puts obj.setStore(setStoreRequest)

# SYNOPSIS
#   SetStoreCategories(setStoreCategoriesRequest)
#
# ARGS
#   setStoreCategoriesRequest SetStoreCategoriesRequestType - {urn:ebay:apis:eBLBaseComponents}SetStoreCategoriesRequestType
#
# RETURNS
#   setStoreCategoriesResponse SetStoreCategoriesResponseType - {urn:ebay:apis:eBLBaseComponents}SetStoreCategoriesResponseType
#
setStoreCategoriesRequest = nil
puts obj.setStoreCategories(setStoreCategoriesRequest)

# SYNOPSIS
#   SetStoreCustomPage(setStoreCustomPageRequest)
#
# ARGS
#   setStoreCustomPageRequest SetStoreCustomPageRequestType - {urn:ebay:apis:eBLBaseComponents}SetStoreCustomPageRequestType
#
# RETURNS
#   setStoreCustomPageResponse SetStoreCustomPageResponseType - {urn:ebay:apis:eBLBaseComponents}SetStoreCustomPageResponseType
#
setStoreCustomPageRequest = nil
puts obj.setStoreCustomPage(setStoreCustomPageRequest)

# SYNOPSIS
#   SetStorePreferences(setStorePreferencesRequest)
#
# ARGS
#   setStorePreferencesRequest SetStorePreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}SetStorePreferencesRequestType
#
# RETURNS
#   setStorePreferencesResponse SetStorePreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}SetStorePreferencesResponseType
#
setStorePreferencesRequest = nil
puts obj.setStorePreferences(setStorePreferencesRequest)

# SYNOPSIS
#   SetTaxTable(setTaxTableRequest)
#
# ARGS
#   setTaxTableRequest SetTaxTableRequestType - {urn:ebay:apis:eBLBaseComponents}SetTaxTableRequestType
#
# RETURNS
#   setTaxTableResponse SetTaxTableResponseType - {urn:ebay:apis:eBLBaseComponents}SetTaxTableResponseType
#
setTaxTableRequest = nil
puts obj.setTaxTable(setTaxTableRequest)

# SYNOPSIS
#   SetUserNotes(setUserNotesRequest)
#
# ARGS
#   setUserNotesRequest SetUserNotesRequestType - {urn:ebay:apis:eBLBaseComponents}SetUserNotesRequestType
#
# RETURNS
#   setUserNotesResponse SetUserNotesResponseType - {urn:ebay:apis:eBLBaseComponents}SetUserNotesResponseType
#
setUserNotesRequest = nil
puts obj.setUserNotes(setUserNotesRequest)

# SYNOPSIS
#   SetUserPreferences(setUserPreferencesRequest)
#
# ARGS
#   setUserPreferencesRequest SetUserPreferencesRequestType - {urn:ebay:apis:eBLBaseComponents}SetUserPreferencesRequestType
#
# RETURNS
#   setUserPreferencesResponse SetUserPreferencesResponseType - {urn:ebay:apis:eBLBaseComponents}SetUserPreferencesResponseType
#
setUserPreferencesRequest = nil
puts obj.setUserPreferences(setUserPreferencesRequest)

# SYNOPSIS
#   UploadSiteHostedPictures(uploadSiteHostedPicturesRequest)
#
# ARGS
#   uploadSiteHostedPicturesRequest UploadSiteHostedPicturesRequestType - {urn:ebay:apis:eBLBaseComponents}UploadSiteHostedPicturesRequestType
#
# RETURNS
#   uploadSiteHostedPicturesResponse UploadSiteHostedPicturesResponseType - {urn:ebay:apis:eBLBaseComponents}UploadSiteHostedPicturesResponseType
#
uploadSiteHostedPicturesRequest = nil
puts obj.uploadSiteHostedPictures(uploadSiteHostedPicturesRequest)

# SYNOPSIS
#   ValidateChallengeInput(validateChallengeInputRequest)
#
# ARGS
#   validateChallengeInputRequest ValidateChallengeInputRequestType - {urn:ebay:apis:eBLBaseComponents}ValidateChallengeInputRequestType
#
# RETURNS
#   validateChallengeInputResponse ValidateChallengeInputResponseType - {urn:ebay:apis:eBLBaseComponents}ValidateChallengeInputResponseType
#
validateChallengeInputRequest = nil
puts obj.validateChallengeInput(validateChallengeInputRequest)

# SYNOPSIS
#   ValidateTestUserRegistration(validateTestUserRegistrationRequest)
#
# ARGS
#   validateTestUserRegistrationRequest ValidateTestUserRegistrationRequestType - {urn:ebay:apis:eBLBaseComponents}ValidateTestUserRegistrationRequestType
#
# RETURNS
#   validateTestUserRegistrationResponse ValidateTestUserRegistrationResponseType - {urn:ebay:apis:eBLBaseComponents}ValidateTestUserRegistrationResponseType
#
validateTestUserRegistrationRequest = nil
puts obj.validateTestUserRegistration(validateTestUserRegistrationRequest)

# SYNOPSIS
#   VeROReportItems(veROReportItemsRequest)
#
# ARGS
#   veROReportItemsRequest VeROReportItemsRequestType - {urn:ebay:apis:eBLBaseComponents}VeROReportItemsRequestType
#
# RETURNS
#   veROReportItemsResponse VeROReportItemsResponseType - {urn:ebay:apis:eBLBaseComponents}VeROReportItemsResponseType
#
veROReportItemsRequest = nil
puts obj.veROReportItems(veROReportItemsRequest)

# SYNOPSIS
#   VerifyAddFixedPriceItem(verifyAddFixedPriceItemRequest)
#
# ARGS
#   verifyAddFixedPriceItemRequest VerifyAddFixedPriceItemRequestType - {urn:ebay:apis:eBLBaseComponents}VerifyAddFixedPriceItemRequestType
#
# RETURNS
#   verifyAddFixedPriceItemResponse VerifyAddFixedPriceItemResponseType - {urn:ebay:apis:eBLBaseComponents}VerifyAddFixedPriceItemResponseType
#
verifyAddFixedPriceItemRequest = nil
puts obj.verifyAddFixedPriceItem(verifyAddFixedPriceItemRequest)

# SYNOPSIS
#   VerifyAddItem(verifyAddItemRequest)
#
# ARGS
#   verifyAddItemRequest VerifyAddItemRequestType - {urn:ebay:apis:eBLBaseComponents}VerifyAddItemRequestType
#
# RETURNS
#   verifyAddItemResponse VerifyAddItemResponseType - {urn:ebay:apis:eBLBaseComponents}VerifyAddItemResponseType
#
verifyAddItemRequest = nil
puts obj.verifyAddItem(verifyAddItemRequest)

# SYNOPSIS
#   VerifyAddSecondChanceItem(verifyAddSecondChanceItemRequest)
#
# ARGS
#   verifyAddSecondChanceItemRequest VerifyAddSecondChanceItemRequestType - {urn:ebay:apis:eBLBaseComponents}VerifyAddSecondChanceItemRequestType
#
# RETURNS
#   verifyAddSecondChanceItemResponse VerifyAddSecondChanceItemResponseType - {urn:ebay:apis:eBLBaseComponents}VerifyAddSecondChanceItemResponseType
#
verifyAddSecondChanceItemRequest = nil
puts obj.verifyAddSecondChanceItem(verifyAddSecondChanceItemRequest)

# SYNOPSIS
#   VerifyRelistItem(verifyRelistItemRequest)
#
# ARGS
#   verifyRelistItemRequest VerifyRelistItemRequestType - {urn:ebay:apis:eBLBaseComponents}VerifyRelistItemRequestType
#
# RETURNS
#   verifyRelistItemResponse VerifyRelistItemResponseType - {urn:ebay:apis:eBLBaseComponents}VerifyRelistItemResponseType
#
verifyRelistItemRequest = nil
puts obj.verifyRelistItem(verifyRelistItemRequest)


