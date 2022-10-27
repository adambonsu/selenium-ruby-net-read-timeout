// ==UserScript==
// @name         Amazon IAP integration
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Mock IAP requests and responses used via javascript bridge
// @author       Prasad
// @include      http://127.0.0.1:8001/*
// @include      http://127.0.0.1:3000/*
// @include      http://cassandra.sit.fe.itv.com/*
// @include      http://cassandra.prd.fe.itv.com/*
// @include      http://localhost:3000/*
// @include      http://127.0.0.1:8001/debug.html
// @include      http://app.10ft.itv.com/*
// @include      https://app.10ft.itv.com/*
// @include      http://app-public.sit.10ft.itv.com/*
// @include      https://app.sit.fe.itv.com/*
// @include      http://app.sit.fe.itv.com/*
// @include      https://app-sit.10ft.itv.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';
    const amazonUserId = '<%= if config.amazon_sdk['amazonUserId'].nil?
    'l3HL7XppEMhrOGDnur9-ulvqomrSg6qyODKmah76lJU=1'
else
    config.amazon_sdk['amazonUserId']
    end %>';

    const userData = {
        requestId: '2ab66ad5-1000-48ab-be7c-088b5736e424',
        requestStatus: 'SUCCESSFUL',
        data: {
            userId: amazonUserId,
            marketplace: 'GB',
        },
    };
    const purchaseUpdates = {
        requestId: '40475fad-0723-45bf-8431-25eeeae7d763',
        requestStatus: 'SUCCESSFUL',
        data: {
            userData: {
                userId: amazonUserId,
                marketplace: 'GB',
            },
            receipts: [
                {
                    receiptId:
                        'DctLCsIwEADQu8y6BrRp0xTcVSx-6EIEt9MKTSC_Jh1Bxbub9eN9gaAFU_YX8QjhcFVxOHaOotyQeS3exttcL--hO1tUojan-x4KSLlM3jK0-PGOKRqDocQ0BpZoTFPUYdUZ0DlCk8MK7a6AZ27bqpFclJxLLhv4_QE',
                    sku: 'com.amazon.hubplus.iap.subscription.annual',
                    itemType: 'SUBSCRIPTION',
                    purchaseDate: 1589473449000,
                    endDate: '',
                },
                {
                    receiptId:
                        'DctLCsIwEADQu8y6BrRp0xTcVSx-6EIEt9MKTSC_Jh1Bxbub9eN9gaAFU_YX8QjhcFVxOHaOotyQeS3exttcL--hO1tUojan-x4KSLlM3jK0-PGOKRqDocQ0BpZoTFPUYdUZ0DlCk8MK7a6AZ27bqpFclJxLLhv4_QE',
                    sku: 'com.amazon.hubplus.iap.subscription.annual',
                    itemType: 'SUBSCRIPTION',
                    purchaseDate: 1589473449000,
                    endDate: '',
                },
                {
                    receiptId:
                        'DctLCsIwEADQu8y6BrRp0xTcVSx-6EIEt9MKTSC_Jh1Bxbub9eN9gaAFU_YX8QjhcFVxOHaOotyQeS3exttcL--hO1tUojan-x4KSLlM3jK0-PGOKRqDocQ0BpZoTFPUYdUZ0DlCk8MK7a6AZ27bqpFclJxLLhv4_QE',
                    sku: 'com.amazon.hubplus.iap.subscription.annual',
                    itemType: 'SUBSCRIPTION',
                    purchaseDate: 1589473449000,
                    endDate: '',
                },
            ],
            hasMore: false,
        },
    };
    const productData = {
        requestId: '8e980db7-4959-48d4-b927-441a33d16731',
        requestStatus: 'SUCCESSFUL',
        data: {
            unavailableSkus: '[]',
            productData: {
                'com.amazon.hubplus.iap.subscription.period.monthly.aftertrial': {
                    smallIconUrl:
                        'https://com-amazon-mas-catalog.s3.amazonaws.com/amzn1.devportal.fileupload.c0dfac63cd424da4bcda5c329e9921d3_44f9ad06-13a3-4000-a1ce-759d9c1b6d37_f5360dd0bebe97bc1f2d2ce7f760a9d6',
                    title: 'ITV Hub+ Start your free trial',
                    itemType: 'SUBSCRIPTION',
                    price: 3.99,
                    description:
                        'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: {
                        GB: 'ITV Hub+ Start your free trial',
                        US: 'ITV Hub+ Start your free trial',
                    },
                    languageDescriptionMap: {
                        GB: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                        US: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.hubplus.iap.subscription.monthly',
                    subscriptionBase: null,
                    term: 'Monthly',
                },
                'com.amazon.hubplus.iap.subscription.period.annual.aftertrial': {
                    smallIconUrl:
                        'https://com-amazon-mas-catalog.s3.amazonaws.com/amzn1.devportal.fileupload.e38f760117cc455f823fe8109d5f841b_a8c9a22d-84cf-4e47-960a-05c947f832a6_621e1c817ecc244ec97b24dc3310ce41',
                    title: 'ITV Hub+ Start your free trial',
                    itemType: 'SUBSCRIPTION',
                    price: 39.99,
                    description:
                        'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: {
                        GB: 'ITV Hub+ Start your free trial',
                        US: 'ITV Hub+ Start your free trial',
                    },
                    languageDescriptionMap: {
                        GB: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                        US: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.hubplus.iap.subscription.annual',
                    subscriptionBase: null,
                    term: 'Annually',
                },
                'com.amazon.hubplus.iap.subscription.period.annual': {
                    smallIconUrl:
                        'https://com-amazon-mas-catalog.s3.amazonaws.com/amzn1.devportal.fileupload.4b67dd71959f4bb0b2e24f3c9113bc62_830b46d7-3837-455e-83aa-ac236810d5de_0e068ba806346569b38c9ca7804f918a',
                    title: 'Upgrade to ITV Hub+',
                    itemType: 'SUBSCRIPTION',
                    price: 39.99,
                    description:
                        'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { GB: 'Upgrade to ITV Hub+', US: 'Upgrade to ITV Hub+' },
                    languageDescriptionMap: {
                        GB: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                        US: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.hubplus.iap.subscription.annual.notrial',
                    subscriptionBase: null,
                    term: 'Annually',
                },
                'com.amazon.hubplus.iap.subscription.period.monthly': {
                    smallIconUrl:
                        'https://com-amazon-mas-catalog.s3.amazonaws.com/amzn1.devportal.fileupload.eed133dfbf83473a97936a6a0bca2955_3df1ad58-2445-41ff-a86c-d1f31ee26654_83639b29fcffff2fe18d34a4e6351740',
                    title: 'Upgrade to ITV Hub+',
                    itemType: 'SUBSCRIPTION',
                    price: 3.99,
                    description:
                        'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { GB: 'Upgrade to ITV Hub+', US: 'Upgrade to ITV Hub+' },
                    languageDescriptionMap: {
                        GB: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                        US: 'Enjoy your favourite ITV shows without the ads*! Subscribe to our premium service to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.hubplus.iap.subscription.monthly.notrial',
                    subscriptionBase: null,
                    term: 'Monthly',
                },
                'com.amazon.itvx.premium.iap.subscription.period.annual.trial': {
                    smallIconUrl: 'http://',
                    title: 'ITVX Premium Start your free trial',
                    itemType: 'SUBSCRIPTION',
                    price: 59.99,
                    description:
                        'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { US: 'ITVX Premium Start your free trial' },
                    languageDescriptionMap: {
                        US: 'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.itvx.premium.iap.subscription.trial',
                    subscriptionBase: null,
                    term: 'Annually',
                },
                'com.amazon.itvx.premium.iap.subscription.period.monthly.trial': {
                    smallIconUrl: 'http://',
                    title: 'ITVX Premium Start your free trial',
                    itemType: 'SUBSCRIPTION',
                    price: 5.99,
                    description:
                        'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { US: 'ITVX Premium Start your free trial' },
                    languageDescriptionMap: {
                        US: 'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.itvx.premium.iap.subscription.trial',
                    subscriptionBase: null,
                    term: 'Monthly',
                },
                'com.amazon.itvx.premium.iap.subscription.period.monthly': {
                    smallIconUrl: 'http://',
                    title: 'Upgrade to ITVX Premium',
                    itemType: 'SUBSCRIPTION',
                    price: 5.99,
                    description:
                        'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { US: 'Upgrade to ITVX Premium' },
                    languageDescriptionMap: {
                        US: 'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.itvx.premium.iap.subscription',
                    subscriptionBase: null,
                    term: 'Monthly',
                },
                'com.amazon.itvx.premium.iap.subscription.period.annual': {
                    smallIconUrl: 'http://',
                    title: 'Upgrade to ITVX Premium',
                    itemType: 'SUBSCRIPTION',
                    price: 59.99,
                    description:
                        'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    languageTitleMap: { US: 'Upgrade to ITVX Premium' },
                    languageDescriptionMap: {
                        US: 'Enjoy 6000 extra hours of hits shows, iconic British boxsets with Britbox without the ads*! Subscribe to our ITVX Premium to help you save time and catch up without interruption.\n*Live channel stream and some shows contain ads. We may include promotions for ITV services. Terms and Privacy notice apply.',
                    },
                    currencyPriceMap: { US: 0.0 },
                    subscriptionParent: 'com.amazon.itvx.premium.iap.subscription',
                    subscriptionBase: null,
                    term: 'Annually',
                },
            },
        },
    };
    const purchaseResponse = {
        requestId: '89881f37-b750-4f02-af70-868227e35cf6',
        requestStatus: 'SUCCESSFUL',
        data: {
            userData: {
                userId: amazonUserId,
                marketplace: 'GB',
            },
            receipt: {
                receiptId:
                    'DctLCsIwEADQu8y6BrQ2SQvuKi1-6EIEt9MKTSC_Jh1Bxbub9eN9gaABU_YX8QjheFVx6FpHsd6QeS3extvMl_fQni0qwc3pfoACUi6TtwwtfrxjisZgKDGNgSUa0xR1WHUGdI7Q5LBCsyvgmdu2knUpK8n3QnD4_QE',
                sku: 'com.amazon.hubplus.iap.subscription.annual',
                itemType: 'SUBSCRIPTION',
                purchaseDate: 1589385864000,
                endDate: '',
            },
        },
    };
    window.AmazonFireTvBridgeIAP = window.AmazonFireTvBridgeIAP || {};
    window.AmazonFireTvBridgeIAP.getUserData = () => {
        if (!window.AmazonFireTvBridgeIAP.stub.validUserData) {
            userData.requestStatus = 'FAILED';
        }
        setTimeout(() => {
            return window.AmazonFireTvBridgeIAP.onUserDataResponse(JSON.stringify(userData));
        }, window.AmazonFireTvBridgeIAP.stub.delay);
    };
    window.AmazonFireTvBridgeIAP.getPurchaseUpdates = () => {
        if (!window.AmazonFireTvBridgeIAP.stub.purchaseUpdates.success) {
            purchaseUpdates.requestStatus = 'FAILED';
        } else if (!window.AmazonFireTvBridgeIAP.stub.purchaseUpdates.pending) {
            purchaseUpdates.data.receipts = [];
        }
        setTimeout(() => {
            return window.AmazonFireTvBridgeIAP.onPurchaseUpdatesResponse(
                JSON.stringify(purchaseUpdates)
            );
        }, window.AmazonFireTvBridgeIAP.stub.delay);
    };
    window.AmazonFireTvBridgeIAP.getProductData = () => {
        if (!window.AmazonFireTvBridgeIAP.stub.validProductData) {
            productData.requestStatus = 'FAILED';
        }
        setTimeout(() => {
            return window.AmazonFireTvBridgeIAP.onProductDataResponse(JSON.stringify(productData));
        }, window.AmazonFireTvBridgeIAP.stub.delay);
    };
    window.AmazonFireTvBridgeIAP.notifyFulfillment = (receiptId, fulfillmentResult) => {
        return;
    };
    window.AmazonFireTvBridgeIAP.purchase = (id) => {
        const {
            stub: { purchase },
            onPurchaseResponse,
        } = window.AmazonFireTvBridgeIAP;
        if (purchase.alreadyPurchased) {
            purchaseResponse.requestStatus = 'ALREADY_PURCHASED';
        } else if (purchase.invalid) {
            purchaseResponse.requestStatus = 'INVALID_SKU';
        } else if (!purchase.success) {
            purchaseResponse.requestStatus = 'FAILED';
        }
        setTimeout(() => {
            return onPurchaseResponse(JSON.stringify(purchaseResponse));
        }, window.AmazonFireTvBridgeIAP.stub.purchase.delay);
    };
})();

window.AmazonFireTvBridgeIAP.stub = {
    delay: <%= if config.amazon_sdk['delay'].nil?
    1000
else
config.amazon_sdk['delay']
end %>,

    validProductData: <%= if config.amazon_sdk['validProductData'].nil?
    true
else
config.amazon_sdk['validProductData']
end %>,

    validUserData: <%= if config.amazon_sdk['validUserData'].nil?
    true
else
config.amazon_sdk['validUserData']
end %>,

    purchaseUpdates: {
    success: true,
        pending: <%= if config.amazon_sdk['pending'].nil?
        false
    else
    config.amazon_sdk['pending']
    end %>
},
purchase: {
    delay: 3000,
        success: <%= if config.amazon_sdk['success'].nil?
        true
    else
    config.amazon_sdk['success']
    end %>,
        alreadyPurchased: <%= if config.amazon_sdk['alreadyPurchased'].nil?
        false
    else
    config.amazon_sdk['alreadyPurchased']
    end %>
},
};
