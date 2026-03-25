# Relatório automático — Rose Google Ads

- Data/hora: 2026-03-24 08:41:18 -0300
- Campanha monitorada: `23689157956`

## Diagnóstico completo (CLI)

```
Customer: 1677226456 | Campaign: 23689157956

=== 1. Campanha + orçamento (estrutura) ===
[
  {
    "campaign": {
      "resource_name": "customers/1677226456/campaigns/23689157956",
      "status": 2,
      "advertising_channel_type": 2,
      "network_settings": {
        "target_google_search": true,
        "target_search_network": true,
        "target_partner_search_network": false
      },
      "bidding_strategy_type": 9,
      "name": "[Tráfego] - [Pesquisa] - [Auxílio Maternidade] - [RS] - [MaxClicks] - [2026-03-24-231401]",
      "id": 23689157956,
      "primary_status": 9,
      "primary_status_reasons": [
        "BIDDING_STRATEGY_LEARNING"
      ]
    },
    "campaign_budget": {
      "resource_name": "customers/1677226456/campaignBudgets/15453501006",
      "status": 2,
      "delivery_method": 2,
      "amount_micros": 30000000,
      "explicitly_shared": false
    }
  }
]

=== 2. Lance manual / estratégia (campos de lance na campanha) ===
[
  {
    "campaign": {
      "resource_name": "customers/1677226456/campaigns/23689157956",
      "id": 23689157956
    }
  }
]

=== 3. Critérios de campanha — localização (IDs; resolver nomes em geo_target_constant) ===
[
  {
    "campaign_criterion": {
      "resource_name": "customers/1677226456/campaignCriteria/23689157956~20104",
      "type": 7,
      "location": {
        "geo_target_constant": "geoTargetConstants/20104"
      },
      "negative": false
    }
  }
]

=== 4. Critérios de campanha — horários (ad schedule) ===
[]

=== 5. Palavras-chave negativas ao nível de campanha ===
[]

=== 6. Grupos de anúncios ===
[
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "status": 2,
      "type": 2,
      "id": 194294170443,
      "name": "[AG] Auxílio Maternidade RS",
      "cpc_bid_micros": 4500000,
      "effective_target_cpa_micros": 0
    }
  }
]

=== 7. Palavras-chave (ativas + pausadas) ===
[
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~33495611",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "pdf"
      },
      "system_serving_status": 2,
      "criterion_id": 33495611,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~70728491",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "emprego"
      },
      "system_serving_status": 2,
      "criterion_id": 70728491,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~70728651",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "vagas"
      },
      "system_serving_status": 2,
      "criterion_id": 70728651,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~100722220",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "apostila"
      },
      "system_serving_status": 2,
      "criterion_id": 100722220,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~119353843",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "curso"
      },
      "system_serving_status": 2,
      "criterion_id": 119353843,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~139650009",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "trabalho"
      },
      "system_serving_status": 2,
      "criterion_id": 139650009,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~139666749",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "concurso"
      },
      "system_serving_status": 2,
      "criterion_id": 139666749,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~149278376",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "gratuito"
      },
      "system_serving_status": 2,
      "criterion_id": 149278376,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~283550986",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "grátis"
      },
      "system_serving_status": 2,
      "criterion_id": 283550986,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~10694643292",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "salário maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 10694643292,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~297148602609",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxilio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 297148602609,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~298547865578",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxilio maternidade inss"
      },
      "system_serving_status": 2,
      "criterion_id": 298547865578,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~299721349600",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "inss auxilio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 299721349600,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~300959962236",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "salario maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 300959962236,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~301693756016",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxílio maternidade inss"
      },
      "system_serving_status": 2,
      "criterion_id": 301693756016,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~301693756696",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "inss auxílio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 301693756696,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~302684253762",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "direito a auxilio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 302684253762,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~309425211574",
      "status": 2,
      "keyword": {
        "match_type": 3,
        "text": "telefone inss"
      },
      "system_serving_status": 2,
      "criterion_id": 309425211574,
      "negative": true,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~309961981625",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxilio maternidade desempregada"
      },
      "system_serving_status": 2,
      "criterion_id": 309961981625,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~332052666151",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "salario maternidade desempregada"
      },
      "system_serving_status": 2,
      "criterion_id": 332052666151,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~337857801119",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "direito ao auxílio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 337857801119,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~341419947012",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxilio maternidade mei"
      },
      "system_serving_status": 2,
      "criterion_id": 341419947012,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~352072580522",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxílio maternidade desempregada"
      },
      "system_serving_status": 2,
      "criterion_id": 352072580522,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~354178573622",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "salário maternidade desempregada"
      },
      "system_serving_status": 2,
      "criterion_id": 354178573622,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~364670666837",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxílio maternidade"
      },
      "system_serving_status": 2,
      "criterion_id": 364670666837,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  },
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_criterion": {
      "resource_name": "customers/1677226456/adGroupCriteria/194294170443~474400232526",
      "status": 2,
      "keyword": {
        "match_type": 4,
        "text": "auxílio maternidade mei"
      },
      "system_serving_status": 2,
      "criterion_id": 474400232526,
      "negative": false,
      "cpc_bid_micros": 4500000,
      "effective_cpc_bid_micros": 4500000
    }
  }
]

=== 8. Anúncios (RSA) — URLs finais e política ===
[
  {
    "ad_group": {
      "resource_name": "customers/1677226456/adGroups/194294170443",
      "id": 194294170443
    },
    "ad_group_ad": {
      "resource_name": "customers/1677226456/adGroupAds/194294170443~801703352301",
      "status": 2,
      "ad": {
        "resource_name": "customers/1677226456/ads/801703352301",
        "id": 801703352301,
        "final_urls": [
          "https://auxiliomaternidade.roseportaladvocacia.com.br/"
        ]
      },
      "policy_summary": {
        "review_status": 3,
        "approval_status": 4
      },
      "primary_status": 2
    }
  }
]

=== 9. Métricas campanha (últimos 30 dias — confirma 0 impressões) ===
[
  {
    "campaign": {
      "resource_name": "customers/1677226456/campaigns/23689157956",
      "id": 23689157956
    },
    "metrics": {
      "clicks": 0,
      "conversions": 0,
      "cost_micros": 0,
      "impressions": 0
    }
  }
]

=== 10. Negativas ao nível de conta (amostra) ===
[
  {
    "customer_negative_criterion": {
      "resource_name": "customers/1677226456/customerNegativeCriteria/300090179",
      "type": 22,
      "id": 300090179
    }
  }
]

=== Fim do diagnóstico ===

```

## Resumo rápido (últimos 1 e 7 dias)

```
{
  "yesterday": [
    {
      "campaign": {
        "resource_name": "customers/1677226456/campaigns/23689157956",
        "id": 23689157956
      },
      "metrics": {
        "clicks": 0,
        "conversions": 0,
        "cost_micros": 0,
        "impressions": 0
      }
    }
  ],
  "last7days": [
    {
      "campaign": {
        "resource_name": "customers/1677226456/campaigns/23689157956",
        "id": 23689157956
      },
      "metrics": {
        "clicks": 0,
        "conversions": 0,
        "cost_micros": 0,
        "impressions": 0
      }
    }
  ]
}
```
