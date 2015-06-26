#!/usr/bin/env ruby
require 'eBayDriver.rb'

endpoint_url = ARGV.shift
obj = EBayAPIInterface.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addDispute(addDisputeRequest)
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
#   addDisputeResponse(addDisputeResponseRequest)
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
#   addFixedPriceItem(addFixedPriceItemRequest)
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
#   addItem(addItemRequest)
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
#   addItemFromSellingManagerTemplate(addItemFromSellingManagerTemplateRequest)
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
#   addItems(addItemsRequest)
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
#   addMemberMessageAAQToPartner(addMemberMessageAAQToPartnerRequest)
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
#   addMemberMessageRTQ(addMemberMessageRTQRequest)
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
#   addMemberMessagesAAQToBidder(addMemberMessagesAAQToBidderRequest)
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
#   addOrder(addOrderRequest)
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
#   addSecondChanceItem(addSecondChanceItemRequest)
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
#   addSellingManagerInventoryFolder(addSellingManagerInventoryFolderRequest)
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
#   addSellingManagerProduct(addSellingManagerProductRequest)
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
#   addSellingManagerTemplate(addSellingManagerTemplateRequest)
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
#   addToItemDescription(addToItemDescriptionRequest)
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
#   addToWatchList(addToWatchListRequest)
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
#   addTransactionConfirmationItem(addTransactionConfirmationItemRequest)
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
#   completeSale(completeSaleRequest)
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
#   confirmIdentity(confirmIdentityRequest)
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
#   deleteMyMessages(deleteMyMessagesRequest)
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
#   deleteSellingManagerInventoryFolder(deleteSellingManagerInventoryFolderRequest)
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
#   deleteSellingManagerItemAutomationRule(deleteSellingManagerItemAutomationRuleRequest)
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
#   deleteSellingManagerProduct(deleteSellingManagerProductRequest)
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
#   deleteSellingManagerTemplate(deleteSellingManagerTemplateRequest)
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
#   deleteSellingManagerTemplateAutomationRule(deleteSellingManagerTemplateAutomationRuleRequest)
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
#   disableUnpaidItemAssistance(disableUnpaidItemAssistanceRequest)
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
#   endFixedPriceItem(endFixedPriceItemRequest)
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
#   endItem(endItemRequest)
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
#   endItems(endItemsRequest)
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
#   extendSiteHostedPictures(extendSiteHostedPicturesRequest)
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
#   fetchToken(fetchTokenRequest)
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
#   getAccount(getAccountRequest)
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
#   getAdFormatLeads(getAdFormatLeadsRequest)
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
#   getAllBidders(getAllBiddersRequest)
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
#   getApiAccessRules(getApiAccessRulesRequest)
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
#   getAttributesCS(getAttributesCSRequest)
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
#   getAttributesXSL(getAttributesXSLRequest)
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
#   getBestOffers(getBestOffersRequest)
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
#   getBidderList(getBidderListRequest)
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
#   getCategories(getCategoriesRequest)
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
#   getCategory2CS(getCategory2CSRequest)
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
#   getCategoryFeatures(getCategoryFeaturesRequest)
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
#   getCategoryMappings(getCategoryMappingsRequest)
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
#   getCategorySpecifics(getCategorySpecificsRequest)
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
#   getChallengeToken(getChallengeTokenRequest)
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
#   getCharities(getCharitiesRequest)
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
#   getClientAlertsAuthToken(getClientAlertsAuthTokenRequest)
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
#   getContextualKeywords(getContextualKeywordsRequest)
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
#   getCrossPromotions(getCrossPromotionsRequest)
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
#   getDescriptionTemplates(getDescriptionTemplatesRequest)
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
#   getDispute(getDisputeRequest)
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
#   getFeedback(getFeedbackRequest)
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
#   getHighBidders(getHighBiddersRequest)
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
#   getItem(getItemRequest)
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
#   getItemRecommendations(getItemRecommendationsRequest)
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
#   getItemShipping(getItemShippingRequest)
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
#   getItemTransactions(getItemTransactionsRequest)
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
#   getItemsAwaitingFeedback(getItemsAwaitingFeedbackRequest)
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
#   getMemberMessages(getMemberMessagesRequest)
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
#   getMessagePreferences(getMessagePreferencesRequest)
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
#   getMyMessages(getMyMessagesRequest)
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
#   getMyeBayBuying(getMyeBayBuyingRequest)
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
#   getMyeBayReminders(getMyeBayRemindersRequest)
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
#   getMyeBaySelling(getMyeBaySellingRequest)
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
#   getNotificationPreferences(getNotificationPreferencesRequest)
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
#   getNotificationsUsage(getNotificationsUsageRequest)
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
#   getOrderTransactions(getOrderTransactionsRequest)
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
#   getOrders(getOrdersRequest)
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
#   getPictureManagerDetails(getPictureManagerDetailsRequest)
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
#   getPictureManagerOptions(getPictureManagerOptionsRequest)
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
#   getProductFamilyMembers(getProductFamilyMembersRequest)
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
#   getProductFinder(getProductFinderRequest)
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
#   getProductFinderXSL(getProductFinderXSLRequest)
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
#   getProductSearchPage(getProductSearchPageRequest)
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
#   getProductSearchResults(getProductSearchResultsRequest)
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
#   getProductSellingPages(getProductSellingPagesRequest)
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
#   getPromotionRules(getPromotionRulesRequest)
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
#   getPromotionalSaleDetails(getPromotionalSaleDetailsRequest)
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
#   getSellerDashboard(getSellerDashboardRequest)
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
#   getSellerEvents(getSellerEventsRequest)
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
#   getSellerList(getSellerListRequest)
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
#   getSellerPayments(getSellerPaymentsRequest)
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
#   getSellerTransactions(getSellerTransactionsRequest)
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
#   getSellingManagerAlerts(getSellingManagerAlertsRequest)
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
#   getSellingManagerEmailLog(getSellingManagerEmailLogRequest)
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
#   getSellingManagerInventory(getSellingManagerInventoryRequest)
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
#   getSellingManagerInventoryFolder(getSellingManagerInventoryFolderRequest)
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
#   getSellingManagerItemAutomationRule(getSellingManagerItemAutomationRuleRequest)
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
#   getSellingManagerSaleRecord(getSellingManagerSaleRecordRequest)
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
#   getSellingManagerSoldListings(getSellingManagerSoldListingsRequest)
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
#   getSellingManagerTemplateAutomationRule(getSellingManagerTemplateAutomationRuleRequest)
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
#   getSellingManagerTemplates(getSellingManagerTemplatesRequest)
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
#   getSessionID(getSessionIDRequest)
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
#   getShippingDiscountProfiles(getShippingDiscountProfilesRequest)
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
#   getStore(getStoreRequest)
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
#   getStoreCategoryUpdateStatus(getStoreCategoryUpdateStatusRequest)
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
#   getStoreCustomPage(getStoreCustomPageRequest)
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
#   getStoreOptions(getStoreOptionsRequest)
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
#   getStorePreferences(getStorePreferencesRequest)
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
#   getSuggestedCategories(getSuggestedCategoriesRequest)
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
#   getTaxTable(getTaxTableRequest)
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
#   getTokenStatus(getTokenStatusRequest)
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
#   getUser(getUserRequest)
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
#   getUserContactDetails(getUserContactDetailsRequest)
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
#   getUserDisputes(getUserDisputesRequest)
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
#   getUserPreferences(getUserPreferencesRequest)
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
#   getVeROReasonCodeDetails(getVeROReasonCodeDetailsRequest)
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
#   getVeROReportStatus(getVeROReportStatusRequest)
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
#   getWantItNowPost(getWantItNowPostRequest)
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
#   getWantItNowSearchResults(getWantItNowSearchResultsRequest)
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
#   geteBayDetails(geteBayDetailsRequest)
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
#   geteBayOfficialTime(geteBayOfficialTimeRequest)
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
#   issueRefund(issueRefundRequest)
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
#   leaveFeedback(leaveFeedbackRequest)
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
#   moveSellingManagerInventoryFolder(moveSellingManagerInventoryFolderRequest)
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
#   placeOffer(placeOfferRequest)
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
#   relistFixedPriceItem(relistFixedPriceItemRequest)
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
#   relistItem(relistItemRequest)
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
#   removeFromWatchList(removeFromWatchListRequest)
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
#   respondToBestOffer(respondToBestOfferRequest)
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
#   respondToFeedback(respondToFeedbackRequest)
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
#   respondToWantItNowPost(respondToWantItNowPostRequest)
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
#   reviseCheckoutStatus(reviseCheckoutStatusRequest)
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
#   reviseFixedPriceItem(reviseFixedPriceItemRequest)
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
#   reviseInventoryStatus(reviseInventoryStatusRequest)
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
#   reviseItem(reviseItemRequest)
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
#   reviseMyMessages(reviseMyMessagesRequest)
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
#   reviseMyMessagesFolders(reviseMyMessagesFoldersRequest)
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
#   reviseSellingManagerInventoryFolder(reviseSellingManagerInventoryFolderRequest)
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
#   reviseSellingManagerProduct(reviseSellingManagerProductRequest)
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
#   reviseSellingManagerSaleRecord(reviseSellingManagerSaleRecordRequest)
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
#   reviseSellingManagerTemplate(reviseSellingManagerTemplateRequest)
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
#   revokeToken(revokeTokenRequest)
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
#   saveItemToSellingManagerTemplate(saveItemToSellingManagerTemplateRequest)
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
#   sellerReverseDispute(sellerReverseDisputeRequest)
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
#   sendInvoice(sendInvoiceRequest)
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
#   setMessagePreferences(setMessagePreferencesRequest)
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
#   setNotificationPreferences(setNotificationPreferencesRequest)
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
#   setPictureManagerDetails(setPictureManagerDetailsRequest)
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
#   setPromotionalSale(setPromotionalSaleRequest)
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
#   setPromotionalSaleListings(setPromotionalSaleListingsRequest)
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
#   setSellingManagerFeedbackOptions(setSellingManagerFeedbackOptionsRequest)
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
#   setSellingManagerItemAutomationRule(setSellingManagerItemAutomationRuleRequest)
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
#   setSellingManagerTemplateAutomationRule(setSellingManagerTemplateAutomationRuleRequest)
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
#   setShippingDiscountProfiles(setShippingDiscountProfilesRequest)
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
#   setStore(setStoreRequest)
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
#   setStoreCategories(setStoreCategoriesRequest)
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
#   setStoreCustomPage(setStoreCustomPageRequest)
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
#   setStorePreferences(setStorePreferencesRequest)
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
#   setTaxTable(setTaxTableRequest)
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
#   setUserNotes(setUserNotesRequest)
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
#   setUserPreferences(setUserPreferencesRequest)
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
#   uploadSiteHostedPictures(uploadSiteHostedPicturesRequest)
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
#   validateChallengeInput(validateChallengeInputRequest)
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
#   validateTestUserRegistration(validateTestUserRegistrationRequest)
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
#   veROReportItems(veROReportItemsRequest)
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
#   verifyAddFixedPriceItem(verifyAddFixedPriceItemRequest)
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
#   verifyAddItem(verifyAddItemRequest)
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
#   verifyAddSecondChanceItem(verifyAddSecondChanceItemRequest)
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
#   verifyRelistItem(verifyRelistItemRequest)
#
# ARGS
#   verifyRelistItemRequest VerifyRelistItemRequestType - {urn:ebay:apis:eBLBaseComponents}VerifyRelistItemRequestType
#
# RETURNS
#   verifyRelistItemResponse VerifyRelistItemResponseType - {urn:ebay:apis:eBLBaseComponents}VerifyRelistItemResponseType
#
verifyRelistItemRequest = nil
puts obj.verifyRelistItem(verifyRelistItemRequest)



