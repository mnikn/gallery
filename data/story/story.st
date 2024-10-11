{
  "story": {
    "storyletGroups": [
      {
        "id": "group_f4e963c2956d4808988dbff586964578",
        "name": "house",
        "customGroupId": "",
        "parentId": null,
        "children": [
          {
            "id": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
            "name": "underground",
            "customGroupId": "",
            "parentId": "group_f4e963c2956d4808988dbff586964578",
            "children": [
              {
                "id": "group_b4be19761430439a902755fdfafded45",
                "name": "find_food",
                "customGroupId": "",
                "parentId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
                "children": []
              }
            ]
          },
          {
            "id": "group_68ddfe9f72a140bbbdb8175879eae4cd",
            "name": "events",
            "customGroupId": "",
            "parentId": "group_f4e963c2956d4808988dbff586964578",
            "children": []
          }
        ]
      },
      {
        "id": "group_17190d95b82f4b2e92c7873768adf73d",
        "name": "house_snow_field",
        "customGroupId": "",
        "parentId": null,
        "children": [
          {
            "id": "group_408c4e133ae64014bdde87d7bb0ed990",
            "name": "initial",
            "customGroupId": "",
            "parentId": "group_17190d95b82f4b2e92c7873768adf73d",
            "children": []
          },
          {
            "id": "group_f27c425f9f4940e88f2faa642c0583db",
            "name": "find_joey",
            "customGroupId": "",
            "parentId": "group_17190d95b82f4b2e92c7873768adf73d",
            "children": []
          }
        ]
      },
      {
        "id": "group_7240e9d360f94c16ab6121c21b50bcf6",
        "name": "uncategorized",
        "customGroupId": "",
        "parentId": null,
        "children": []
      }
    ],
    "storylets": [
      {
        "groupId": "group_408c4e133ae64014bdde87d7bb0ed990",
        "data": {
          "nodes": {
            "node_71852102348047f8b419d105ff5bb57e": {
              "id": "node_71852102348047f8b419d105ff5bb57e",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "initial_talk"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_44186c9fa1d84250b0aaa2593b6a2305": {
              "id": "node_44186c9fa1d84250b0aaa2593b6a2305",
              "data": {
                "type": "sentence",
                "content": "content_0db6567e6fa44e34b34a6a560eef4877",
                "contentSpeed": {
                  "zh": [
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e9c280e5ac3d48b3926d8ba8a991ed21": {
              "id": "node_e9c280e5ac3d48b3926d8ba8a991ed21",
              "data": {
                "type": "sentence",
                "content": "content_7f35d1c637b94347a3fb60c4c88b9bd1",
                "contentSpeed": {
                  "zh": [
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e97c311bb8a94c389399679efae50d5a": {
              "id": "node_e97c311bb8a94c389399679efae50d5a",
              "data": {
                "type": "sentence",
                "content": "content_e211f4d9906541c5b8837f3951e16542",
                "contentSpeed": {
                  "zh": [
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d30d64a3e3864c3a84d8e38956f72cab": {
              "id": "node_d30d64a3e3864c3a84d8e38956f72cab",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].enabled = false\r\ncontext.character_map[\"laisha\"].set_state(\"movie\")\r\ncontext.character_map[\"laisha\"].play_animation(\"fall-down\")\r\n\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].enabled = false\r\ncontext.character_map[\"joey\"].set_state(\"movie\")\r\ncontext.character_map[\"joey\"].play_animation(\"fall-down\")\r\n\r\nvar character = context.character_map[\"sheng_qi\"]\r\ncharacter.enabled = false\r\nawait character.set_state(\"movie\")\r\ncharacter.play_animation(\"fall-down\")\r\n\r\nawait context.root.get_tree().create_timer(1.0).timeout\r\nawait character.play_animation(\"getup\")"
                  }
                }
              }
            },
            "node_f8763a289cdf4958abdea97c330600e8": {
              "id": "node_f8763a289cdf4958abdea97c330600e8",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"sheng_qi\"]\r\nawait character.play_animation(\"fall-down-look-around\")"
                  }
                }
              }
            },
            "node_60e15a3460894527b529c9757a07e7f9": {
              "id": "node_60e15a3460894527b529c9757a07e7f9",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"sheng_qi\"]\r\nawait character.play_animation(\"fall-down-cold\")"
                  }
                }
              }
            },
            "node_fd04dbe3c7b744cab7627ec9050d8f85": {
              "id": "node_fd04dbe3c7b744cab7627ec9050d8f85",
              "data": {
                "type": "sentence",
                "content": "content_2b1f4b937b5b45408f55bcd3cbc8a107",
                "contentSpeed": {
                  "zh": [
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                    1,
                    1,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "var character = context.character_map[\"sheng_qi\"]\r\ncharacter.set_state(\"idle\")\r\ncharacter.enabled = true",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_08d3efee0bd34a349224d119075339c3": {
              "id": "node_08d3efee0bd34a349224d119075339c3",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"sheng_qi\"]\r\nawait character.play_animation(\"getup-full\")"
                  }
                }
              }
            },
            "node_fb9352308eb94742a0ca0833786df51f": {
              "id": "node_fb9352308eb94742a0ca0833786df51f",
              "data": {
                "type": "sentence",
                "content": "content_e07a87e36f874d9f8e7291d6bd118a23",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7e6196dd9b6545aea221c66b47f99b34": {
              "id": "node_7e6196dd9b6545aea221c66b47f99b34",
              "data": {
                "type": "sentence",
                "content": "content_73cf63d264464e339521d095684b6503",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_44186c9fa1d84250b0aaa2593b6a2305-node_e9c280e5ac3d48b3926d8ba8a991ed21": {
              "sourceId": "node_44186c9fa1d84250b0aaa2593b6a2305",
              "targetId": "node_e9c280e5ac3d48b3926d8ba8a991ed21",
              "data": {}
            },
            "node_71852102348047f8b419d105ff5bb57e-node_d30d64a3e3864c3a84d8e38956f72cab": {
              "sourceId": "node_71852102348047f8b419d105ff5bb57e",
              "targetId": "node_d30d64a3e3864c3a84d8e38956f72cab",
              "data": {}
            },
            "node_d30d64a3e3864c3a84d8e38956f72cab-node_44186c9fa1d84250b0aaa2593b6a2305": {
              "sourceId": "node_d30d64a3e3864c3a84d8e38956f72cab",
              "targetId": "node_44186c9fa1d84250b0aaa2593b6a2305",
              "data": {}
            },
            "node_60e15a3460894527b529c9757a07e7f9-node_e97c311bb8a94c389399679efae50d5a": {
              "sourceId": "node_60e15a3460894527b529c9757a07e7f9",
              "targetId": "node_e97c311bb8a94c389399679efae50d5a",
              "data": {}
            },
            "node_e97c311bb8a94c389399679efae50d5a-node_08d3efee0bd34a349224d119075339c3": {
              "sourceId": "node_e97c311bb8a94c389399679efae50d5a",
              "targetId": "node_08d3efee0bd34a349224d119075339c3",
              "data": {}
            },
            "node_08d3efee0bd34a349224d119075339c3-node_fd04dbe3c7b744cab7627ec9050d8f85": {
              "sourceId": "node_08d3efee0bd34a349224d119075339c3",
              "targetId": "node_fd04dbe3c7b744cab7627ec9050d8f85",
              "data": {}
            },
            "node_7e6196dd9b6545aea221c66b47f99b34-node_60e15a3460894527b529c9757a07e7f9": {
              "sourceId": "node_7e6196dd9b6545aea221c66b47f99b34",
              "targetId": "node_60e15a3460894527b529c9757a07e7f9",
              "data": {}
            },
            "node_e9c280e5ac3d48b3926d8ba8a991ed21-node_fb9352308eb94742a0ca0833786df51f": {
              "sourceId": "node_e9c280e5ac3d48b3926d8ba8a991ed21",
              "targetId": "node_fb9352308eb94742a0ca0833786df51f",
              "data": {}
            },
            "node_fb9352308eb94742a0ca0833786df51f-node_f8763a289cdf4958abdea97c330600e8": {
              "sourceId": "node_fb9352308eb94742a0ca0833786df51f",
              "targetId": "node_f8763a289cdf4958abdea97c330600e8",
              "data": {}
            },
            "node_f8763a289cdf4958abdea97c330600e8-node_7e6196dd9b6545aea221c66b47f99b34": {
              "sourceId": "node_f8763a289cdf4958abdea97c330600e8",
              "targetId": "node_7e6196dd9b6545aea221c66b47f99b34",
              "data": {}
            }
          },
          "name": "initial_talk",
          "id": "storylet_901ac9a5d4db406caf8730a2fe260a2a",
          "conditions": []
        }
      },
      {
        "groupId": "group_408c4e133ae64014bdde87d7bb0ed990",
        "data": {
          "nodes": {
            "node_4940902904a4469f8069dff208d7f378": {
              "id": "node_4940902904a4469f8069dff208d7f378",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_laisha"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": ""
              }
            },
            "node_36af5b53c7f34c068b7d5e6a001bcaca": {
              "id": "node_36af5b53c7f34c068b7d5e6a001bcaca",
              "data": {
                "type": "sentence",
                "content": "content_4fbb20e6db314e5988e36fb19c2a22f9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_c6f8deb918b14a89842e794c2bb8dd45": {
              "id": "node_c6f8deb918b14a89842e794c2bb8dd45",
              "data": {
                "type": "sentence",
                "content": "content_606a5d3009924ae8ace888231001c15a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9c6d70fc5e1f4330807e4c4e61427244": {
              "id": "node_9c6d70fc5e1f4330807e4c4e61427244",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"laisha\"]\r\nawait character.play_animation(\"getup\")"
                  }
                }
              }
            },
            "node_7a2a979559d54a6d91a5de04e569463a": {
              "id": "node_7a2a979559d54a6d91a5de04e569463a",
              "data": {
                "type": "sentence",
                "content": "content_0f97a314104d4621bcdd9af10a01d06e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ed32ad3d92b44512a31aae8cc434b2c7": {
              "id": "node_ed32ad3d92b44512a31aae8cc434b2c7",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"laisha\"]\r\ncharacter.direction = \"right\"\r\ncharacter.play_animation(\"idle\")\r\nawait context.root.get_tree().create_timer(2.0).timeout"
                  }
                }
              }
            },
            "node_756bab853d6a4a348e488d8a4ad97416": {
              "id": "node_756bab853d6a4a348e488d8a4ad97416",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"laisha\"]\r\ncharacter.direction = \"left\"\r\ncharacter.play_animation(\"idle\")\r\nawait context.root.get_tree().create_timer(2.0).timeout"
                  }
                }
              }
            },
            "node_095c20dfddb048afb8230772b98555a0": {
              "id": "node_095c20dfddb048afb8230772b98555a0",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"laisha\"]\r\ncharacter.direction = \"down\"\r\ncharacter.play_animation(\"idle\")\r\nawait context.root.get_tree().create_timer(2.0).timeout"
                  }
                }
              }
            },
            "node_c4cce5f27b4f407d9d62b9000adc2994": {
              "id": "node_c4cce5f27b4f407d9d62b9000adc2994",
              "data": {
                "type": "sentence",
                "content": "content_6b583b8132a348f9ba6894b837c4eca7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_aa2c2fd6c16d41e7a6f4477753e32e6c": {
              "id": "node_aa2c2fd6c16d41e7a6f4477753e32e6c",
              "data": {
                "type": "sentence",
                "content": "content_58a3f59956424164bb2cf97445a52599",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_cb4975ea87a3487b93a909949c3f94a3": {
              "id": "node_cb4975ea87a3487b93a909949c3f94a3",
              "data": {
                "type": "sentence",
                "content": "content_4837281249f045ac97193209668e8921",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b1370c6bc8954cfebeae50bf9c6cb0c7": {
              "id": "node_b1370c6bc8954cfebeae50bf9c6cb0c7",
              "data": {
                "type": "sentence",
                "content": "content_fe537b93d92c4af2b8fbc2f6c96f7d40",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7622c9ab6e9c4ab3bb7adde0e859fdb8": {
              "id": "node_7622c9ab6e9c4ab3bb7adde0e859fdb8",
              "data": {
                "type": "sentence",
                "content": "content_0f85407b864a4c219c799f59275772df",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return not tracker.shs(\"house_snow_field.initial.talk_joey\")"
              }
            },
            "node_873ed46864474e4b81dd9c6b1c947edc": {
              "id": "node_873ed46864474e4b81dd9c6b1c947edc",
              "data": {
                "type": "sentence",
                "content": "content_ff6e1348e3cb46fbbc8fe67c1a7a25cb",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fa608d22474f4932a58645459f4f999e": {
              "id": "node_fa608d22474f4932a58645459f4f999e",
              "data": {
                "type": "sentence",
                "content": "content_303311d965be4bc1a795aabd4323b2a7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9bf1916b929d4c0e94465110656ddb2e": {
              "id": "node_9bf1916b929d4c0e94465110656ddb2e",
              "data": {
                "type": "sentence",
                "content": "content_8be20d0bca2847e5a4dd6e986d9ebe0d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "afterJumpProcess": ""
              }
            },
            "node_ac05e62705ba48c2a6a4a1cb42a26b83": {
              "id": "node_ac05e62705ba48c2a6a4a1cb42a26b83",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"down\"\r\ncontext.character_map[\"laisha\"].play_animation(\"idle\")"
                  }
                }
              }
            },
            "node_7ef6f96ba324417ba4b29d2368a72a8f": {
              "id": "node_7ef6f96ba324417ba4b29d2368a72a8f",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "var character = context.character_map[\"laisha\"]\r\ncharacter.face_to(context.character_map[\"sheng_qi\"])\r\nawait context.root.get_tree().create_timer(1.0).timeout"
                  }
                }
              }
            },
            "node_ad383e691a744994a0a7f62b54f92b19": {
              "id": "node_ad383e691a744994a0a7f62b54f92b19",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "target_node_id": "know_house",
                  "jump_type": "direct"
                }
              }
            },
            "node_abd50d98c88843a48b538c1e538faf00": {
              "id": "node_abd50d98c88843a48b538c1e538faf00",
              "data": {
                "type": "sentence",
                "content": "content_3b6f2e02ae2e43518aa701c389f6c6b7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return not tracker.shs(\"house_snow_field.initial.talk_joey\")"
              }
            },
            "node_f6c56155af134078b69b8342b5578624": {
              "id": "node_f6c56155af134078b69b8342b5578624",
              "data": {
                "type": "sentence",
                "content": "content_6026895951f24ef587b0c1c0a824202d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "know_house",
                "enableCheck": "return tracker.shs(\"house_snow_field.initial.talk_joey\") and not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_84bd4da6ebc2444091267e839381279f": {
              "id": "node_84bd4da6ebc2444091267e839381279f",
              "data": {
                "type": "sentence",
                "content": "content_913fe7b5684046318ff5b4f49146066c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            },
            "node_43cebbe7fcf6429f80fcd2d0c727fd6d": {
              "id": "node_43cebbe7fcf6429f80fcd2d0c727fd6d",
              "data": {
                "type": "sentence",
                "content": "content_06eeb0888a1c44f58f1f43b8d430bec1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            },
            "node_91a101e6e9974893b831fe0113732d6d": {
              "id": "node_91a101e6e9974893b831fe0113732d6d",
              "data": {
                "type": "sentence",
                "content": "content_6008ba0228ce4a19ab0d6ee694fbd7a6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            },
            "node_75e19cd171bb45edb0904970bd8d638a": {
              "id": "node_75e19cd171bb45edb0904970bd8d638a",
              "data": {
                "type": "sentence",
                "content": "content_94c3cd6a32a443a196009dc55e86b888",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return tracker.cnhs(\"house_snow_field.initial.talk_laisha\", \"know_house\")"
              }
            },
            "node_32bf9141abd94aa0a887ef74ec9494ef": {
              "id": "node_32bf9141abd94aa0a887ef74ec9494ef",
              "data": {
                "type": "sentence",
                "content": "content_d65d3047e4fb4399b232087d7a8a6b5a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d93826415f9345dfb1b07f58a3318117": {
              "id": "node_d93826415f9345dfb1b07f58a3318117",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"down\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")"
                  }
                }
              }
            }
          },
          "links": {
            "node_4940902904a4469f8069dff208d7f378-node_36af5b53c7f34c068b7d5e6a001bcaca": {
              "sourceId": "node_4940902904a4469f8069dff208d7f378",
              "targetId": "node_36af5b53c7f34c068b7d5e6a001bcaca",
              "data": {}
            },
            "node_36af5b53c7f34c068b7d5e6a001bcaca-node_c6f8deb918b14a89842e794c2bb8dd45": {
              "sourceId": "node_36af5b53c7f34c068b7d5e6a001bcaca",
              "targetId": "node_c6f8deb918b14a89842e794c2bb8dd45",
              "data": {}
            },
            "node_c6f8deb918b14a89842e794c2bb8dd45-node_9c6d70fc5e1f4330807e4c4e61427244": {
              "sourceId": "node_c6f8deb918b14a89842e794c2bb8dd45",
              "targetId": "node_9c6d70fc5e1f4330807e4c4e61427244",
              "data": {}
            },
            "node_9c6d70fc5e1f4330807e4c4e61427244-node_7a2a979559d54a6d91a5de04e569463a": {
              "sourceId": "node_9c6d70fc5e1f4330807e4c4e61427244",
              "targetId": "node_7a2a979559d54a6d91a5de04e569463a",
              "data": {}
            },
            "node_7a2a979559d54a6d91a5de04e569463a-node_ed32ad3d92b44512a31aae8cc434b2c7": {
              "sourceId": "node_7a2a979559d54a6d91a5de04e569463a",
              "targetId": "node_ed32ad3d92b44512a31aae8cc434b2c7",
              "data": {}
            },
            "node_ed32ad3d92b44512a31aae8cc434b2c7-node_756bab853d6a4a348e488d8a4ad97416": {
              "sourceId": "node_ed32ad3d92b44512a31aae8cc434b2c7",
              "targetId": "node_756bab853d6a4a348e488d8a4ad97416",
              "data": {}
            },
            "node_756bab853d6a4a348e488d8a4ad97416-node_095c20dfddb048afb8230772b98555a0": {
              "sourceId": "node_756bab853d6a4a348e488d8a4ad97416",
              "targetId": "node_095c20dfddb048afb8230772b98555a0",
              "data": {}
            },
            "node_aa2c2fd6c16d41e7a6f4477753e32e6c-node_cb4975ea87a3487b93a909949c3f94a3": {
              "sourceId": "node_aa2c2fd6c16d41e7a6f4477753e32e6c",
              "targetId": "node_cb4975ea87a3487b93a909949c3f94a3",
              "data": {}
            },
            "node_cb4975ea87a3487b93a909949c3f94a3-node_b1370c6bc8954cfebeae50bf9c6cb0c7": {
              "sourceId": "node_cb4975ea87a3487b93a909949c3f94a3",
              "targetId": "node_b1370c6bc8954cfebeae50bf9c6cb0c7",
              "data": {}
            },
            "node_b1370c6bc8954cfebeae50bf9c6cb0c7-node_7622c9ab6e9c4ab3bb7adde0e859fdb8": {
              "sourceId": "node_b1370c6bc8954cfebeae50bf9c6cb0c7",
              "targetId": "node_7622c9ab6e9c4ab3bb7adde0e859fdb8",
              "data": {}
            },
            "node_c4cce5f27b4f407d9d62b9000adc2994-node_873ed46864474e4b81dd9c6b1c947edc": {
              "sourceId": "node_c4cce5f27b4f407d9d62b9000adc2994",
              "targetId": "node_873ed46864474e4b81dd9c6b1c947edc",
              "data": {}
            },
            "node_7622c9ab6e9c4ab3bb7adde0e859fdb8-node_fa608d22474f4932a58645459f4f999e": {
              "sourceId": "node_7622c9ab6e9c4ab3bb7adde0e859fdb8",
              "targetId": "node_fa608d22474f4932a58645459f4f999e",
              "data": {}
            },
            "node_fa608d22474f4932a58645459f4f999e-node_9bf1916b929d4c0e94465110656ddb2e": {
              "sourceId": "node_fa608d22474f4932a58645459f4f999e",
              "targetId": "node_9bf1916b929d4c0e94465110656ddb2e",
              "data": {}
            },
            "node_9bf1916b929d4c0e94465110656ddb2e-node_ac05e62705ba48c2a6a4a1cb42a26b83": {
              "sourceId": "node_9bf1916b929d4c0e94465110656ddb2e",
              "targetId": "node_ac05e62705ba48c2a6a4a1cb42a26b83",
              "data": {}
            },
            "node_095c20dfddb048afb8230772b98555a0-node_c4cce5f27b4f407d9d62b9000adc2994": {
              "sourceId": "node_095c20dfddb048afb8230772b98555a0",
              "targetId": "node_c4cce5f27b4f407d9d62b9000adc2994",
              "data": {}
            },
            "node_7ef6f96ba324417ba4b29d2368a72a8f-node_aa2c2fd6c16d41e7a6f4477753e32e6c": {
              "sourceId": "node_7ef6f96ba324417ba4b29d2368a72a8f",
              "targetId": "node_aa2c2fd6c16d41e7a6f4477753e32e6c",
              "data": {}
            },
            "node_873ed46864474e4b81dd9c6b1c947edc-node_7ef6f96ba324417ba4b29d2368a72a8f": {
              "sourceId": "node_873ed46864474e4b81dd9c6b1c947edc",
              "targetId": "node_7ef6f96ba324417ba4b29d2368a72a8f",
              "data": {}
            },
            "node_b1370c6bc8954cfebeae50bf9c6cb0c7-node_ad383e691a744994a0a7f62b54f92b19": {
              "sourceId": "node_b1370c6bc8954cfebeae50bf9c6cb0c7",
              "targetId": "node_ad383e691a744994a0a7f62b54f92b19",
              "data": {}
            },
            "node_4940902904a4469f8069dff208d7f378-node_abd50d98c88843a48b538c1e538faf00": {
              "sourceId": "node_4940902904a4469f8069dff208d7f378",
              "targetId": "node_abd50d98c88843a48b538c1e538faf00",
              "data": {}
            },
            "node_4940902904a4469f8069dff208d7f378-node_f6c56155af134078b69b8342b5578624": {
              "sourceId": "node_4940902904a4469f8069dff208d7f378",
              "targetId": "node_f6c56155af134078b69b8342b5578624",
              "data": {}
            },
            "node_f6c56155af134078b69b8342b5578624-node_84bd4da6ebc2444091267e839381279f": {
              "sourceId": "node_f6c56155af134078b69b8342b5578624",
              "targetId": "node_84bd4da6ebc2444091267e839381279f",
              "data": {}
            },
            "node_84bd4da6ebc2444091267e839381279f-node_43cebbe7fcf6429f80fcd2d0c727fd6d": {
              "sourceId": "node_84bd4da6ebc2444091267e839381279f",
              "targetId": "node_43cebbe7fcf6429f80fcd2d0c727fd6d",
              "data": {}
            },
            "node_43cebbe7fcf6429f80fcd2d0c727fd6d-node_91a101e6e9974893b831fe0113732d6d": {
              "sourceId": "node_43cebbe7fcf6429f80fcd2d0c727fd6d",
              "targetId": "node_91a101e6e9974893b831fe0113732d6d",
              "data": {}
            },
            "node_4940902904a4469f8069dff208d7f378-node_75e19cd171bb45edb0904970bd8d638a": {
              "sourceId": "node_4940902904a4469f8069dff208d7f378",
              "targetId": "node_75e19cd171bb45edb0904970bd8d638a",
              "data": {}
            },
            "node_91a101e6e9974893b831fe0113732d6d-node_32bf9141abd94aa0a887ef74ec9494ef": {
              "sourceId": "node_91a101e6e9974893b831fe0113732d6d",
              "targetId": "node_32bf9141abd94aa0a887ef74ec9494ef",
              "data": {}
            },
            "node_32bf9141abd94aa0a887ef74ec9494ef-node_d93826415f9345dfb1b07f58a3318117": {
              "sourceId": "node_32bf9141abd94aa0a887ef74ec9494ef",
              "targetId": "node_d93826415f9345dfb1b07f58a3318117",
              "data": {}
            }
          },
          "name": "laisha_talk",
          "id": "storylet_57cfc345102a42f082c238ced552280a",
          "conditions": []
        }
      },
      {
        "groupId": "group_408c4e133ae64014bdde87d7bb0ed990",
        "data": {
          "nodes": {
            "node_93bfe4753b0049fea9ee390aaf2d49d4": {
              "id": "node_93bfe4753b0049fea9ee390aaf2d49d4",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_joey"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return not tracker.nhs(context.current_node.id)"
              }
            },
            "node_a7b654d9dc02476f9673878501f8a2c4": {
              "id": "node_a7b654d9dc02476f9673878501f8a2c4",
              "data": {
                "type": "sentence",
                "content": "content_87a120f6f22b48b08ed9055e3f2d686d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a954e10de7714b809762af3943f12653": {
              "id": "node_a954e10de7714b809762af3943f12653",
              "data": {
                "type": "sentence",
                "content": "content_0e4efbb6799e4270a7d8d91ea7892753",
                "contentSpeed": {
                  "zh": [
                    0.2,
                    0.2,
                    0.2,
                    0.2
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e8b15b07107d42669d1765a9abba9431": {
              "id": "node_e8b15b07107d42669d1765a9abba9431",
              "data": {
                "type": "sentence",
                "content": "content_77bd7177e86b4f1ea75f607d39031ed0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_00dcf5d8015d4f1086b3841b37efd6b1": {
              "id": "node_00dcf5d8015d4f1086b3841b37efd6b1",
              "data": {
                "type": "sentence",
                "content": "content_dfbaf2b7fb4045c08c445af4cf53fc37",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return tracker.shs(\"house_snow_field.initial.talk_laisha\")"
              }
            },
            "node_31e37eb577c94fb78d58b10a6bb38de6": {
              "id": "node_31e37eb577c94fb78d58b10a6bb38de6",
              "data": {
                "type": "sentence",
                "content": "content_595d04391bfa4b02b1513880f72919a9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return not tracker.shs(\"house_snow_field.initial.talk_laisha\")"
              }
            }
          },
          "links": {
            "node_93bfe4753b0049fea9ee390aaf2d49d4-node_a7b654d9dc02476f9673878501f8a2c4": {
              "sourceId": "node_93bfe4753b0049fea9ee390aaf2d49d4",
              "targetId": "node_a7b654d9dc02476f9673878501f8a2c4",
              "data": {}
            },
            "node_a7b654d9dc02476f9673878501f8a2c4-node_a954e10de7714b809762af3943f12653": {
              "sourceId": "node_a7b654d9dc02476f9673878501f8a2c4",
              "targetId": "node_a954e10de7714b809762af3943f12653",
              "data": {}
            },
            "node_a954e10de7714b809762af3943f12653-node_e8b15b07107d42669d1765a9abba9431": {
              "sourceId": "node_a954e10de7714b809762af3943f12653",
              "targetId": "node_e8b15b07107d42669d1765a9abba9431",
              "data": {}
            },
            "node_e8b15b07107d42669d1765a9abba9431-node_00dcf5d8015d4f1086b3841b37efd6b1": {
              "sourceId": "node_e8b15b07107d42669d1765a9abba9431",
              "targetId": "node_00dcf5d8015d4f1086b3841b37efd6b1",
              "data": {}
            },
            "node_e8b15b07107d42669d1765a9abba9431-node_31e37eb577c94fb78d58b10a6bb38de6": {
              "sourceId": "node_e8b15b07107d42669d1765a9abba9431",
              "targetId": "node_31e37eb577c94fb78d58b10a6bb38de6",
              "data": {}
            }
          },
          "name": "call_joey",
          "id": "storylet_cdc587aed1734e789fe523e4e1fcacdb",
          "conditions": []
        }
      },
      {
        "groupId": "group_408c4e133ae64014bdde87d7bb0ed990",
        "data": {
          "nodes": {
            "node_1485d178284f4bbeb42eb029e735168c": {
              "id": "node_1485d178284f4bbeb42eb029e735168c",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "see_house"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_4be66fbf35964ef2951f8a298019af50": {
              "id": "node_4be66fbf35964ef2951f8a298019af50",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].enabled = false\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.root.camera_to_house()\r\nawait context.root.get_tree().create_timer(2.0).timeout\r\ncontext.root.camera_to_character()\r\nawait context.root.get_tree().create_timer(0.5).timeout"
                  }
                }
              }
            },
            "node_e439de77feaa4b01bfadf7cf1f9c2c23": {
              "id": "node_e439de77feaa4b01bfadf7cf1f9c2c23",
              "data": {
                "type": "sentence",
                "content": "content_3ba5f00570fe4c0182e2c835f91da0bc",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_dcd3547fbbec484ebf9456a7a0e4bcb7": {
              "id": "node_dcd3547fbbec484ebf9456a7a0e4bcb7",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_INITIAL_TALK)"
                  }
                }
              }
            }
          },
          "links": {
            "node_1485d178284f4bbeb42eb029e735168c-node_4be66fbf35964ef2951f8a298019af50": {
              "sourceId": "node_1485d178284f4bbeb42eb029e735168c",
              "targetId": "node_4be66fbf35964ef2951f8a298019af50",
              "data": {}
            },
            "node_4be66fbf35964ef2951f8a298019af50-node_e439de77feaa4b01bfadf7cf1f9c2c23": {
              "sourceId": "node_4be66fbf35964ef2951f8a298019af50",
              "targetId": "node_e439de77feaa4b01bfadf7cf1f9c2c23",
              "data": {}
            },
            "node_e439de77feaa4b01bfadf7cf1f9c2c23-node_dcd3547fbbec484ebf9456a7a0e4bcb7": {
              "sourceId": "node_e439de77feaa4b01bfadf7cf1f9c2c23",
              "targetId": "node_dcd3547fbbec484ebf9456a7a0e4bcb7",
              "data": {}
            }
          },
          "name": "see_house",
          "id": "storylet_cfe5a07f8c2b404291830a8f8d9c2d9f",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_3aad5303c7eb44ef8bd5668ace0bed95": {
              "id": "node_3aad5303c7eb44ef8bd5668ace0bed95",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "initial_talk"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_f9851cdf1eab4aaa9c9aa397a03da161": {
              "id": "node_f9851cdf1eab4aaa9c9aa397a03da161",
              "data": {
                "type": "sentence",
                "content": "content_e04747115c30403f84c9b0147d05a703",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1ff8a0dbeee6407b9fedcf5306cee562": {
              "id": "node_1ff8a0dbeee6407b9fedcf5306cee562",
              "data": {
                "type": "sentence",
                "content": "content_5c9b0c1152a3440f917aeebffddfdd38",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_da2672e56a824c63a88e034531f4ff02": {
              "id": "node_da2672e56a824c63a88e034531f4ff02",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(1088,336)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(1176,216)\r\n\r\ncontext.character_map[\"joey\"].position = Vector2(1088,184)\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\n\r\nawait context.root.get_tree().create_timer(0.5).timeout"
                  }
                }
              }
            },
            "node_33b0afbcaf46475f976bbff1781a4def": {
              "id": "node_33b0afbcaf46475f976bbff1781a4def",
              "data": {
                "type": "sentence",
                "content": "content_7c3b88a7471c401cbad4ceb83517bfb2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_33663a0221774a36aa99bbead02391f4": {
              "id": "node_33663a0221774a36aa99bbead02391f4",
              "data": {
                "type": "sentence",
                "content": "content_c1cad727d05b4ddf9b14a77581f7d7ee",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c3cc86defd244a18a20319e892499fd7": {
              "id": "node_c3cc86defd244a18a20319e892499fd7",
              "data": {
                "type": "sentence",
                "content": "content_99dd7b8eb6554356b330039aa6777e24",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6e3230d96f414e4c8a0e7af87184a936": {
              "id": "node_6e3230d96f414e4c8a0e7af87184a936",
              "data": {
                "type": "sentence",
                "content": "content_cb8f35f1357847a29ab62db40ec09441",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_3aad5303c7eb44ef8bd5668ace0bed95-node_da2672e56a824c63a88e034531f4ff02": {
              "sourceId": "node_3aad5303c7eb44ef8bd5668ace0bed95",
              "targetId": "node_da2672e56a824c63a88e034531f4ff02",
              "data": {}
            },
            "node_da2672e56a824c63a88e034531f4ff02-node_33b0afbcaf46475f976bbff1781a4def": {
              "sourceId": "node_da2672e56a824c63a88e034531f4ff02",
              "targetId": "node_33b0afbcaf46475f976bbff1781a4def",
              "data": {}
            },
            "node_33b0afbcaf46475f976bbff1781a4def-node_f9851cdf1eab4aaa9c9aa397a03da161": {
              "sourceId": "node_33b0afbcaf46475f976bbff1781a4def",
              "targetId": "node_f9851cdf1eab4aaa9c9aa397a03da161",
              "data": {}
            },
            "node_f9851cdf1eab4aaa9c9aa397a03da161-node_33663a0221774a36aa99bbead02391f4": {
              "sourceId": "node_f9851cdf1eab4aaa9c9aa397a03da161",
              "targetId": "node_33663a0221774a36aa99bbead02391f4",
              "data": {}
            },
            "node_33663a0221774a36aa99bbead02391f4-node_c3cc86defd244a18a20319e892499fd7": {
              "sourceId": "node_33663a0221774a36aa99bbead02391f4",
              "targetId": "node_c3cc86defd244a18a20319e892499fd7",
              "data": {}
            },
            "node_c3cc86defd244a18a20319e892499fd7-node_1ff8a0dbeee6407b9fedcf5306cee562": {
              "sourceId": "node_c3cc86defd244a18a20319e892499fd7",
              "targetId": "node_1ff8a0dbeee6407b9fedcf5306cee562",
              "data": {}
            },
            "node_1ff8a0dbeee6407b9fedcf5306cee562-node_6e3230d96f414e4c8a0e7af87184a936": {
              "sourceId": "node_1ff8a0dbeee6407b9fedcf5306cee562",
              "targetId": "node_6e3230d96f414e4c8a0e7af87184a936",
              "data": {}
            }
          },
          "name": "initial_talk",
          "id": "storylet_6556da34be0140b49d088c451a3e2e33",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_4c6b788a534247a9b1644d56e8d8d0e2": {
              "id": "node_4c6b788a534247a9b1644d56e8d8d0e2",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_laisha_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_898fe3e28380434aa3bf88492196d897": {
              "id": "node_898fe3e28380434aa3bf88492196d897",
              "data": {
                "type": "sentence",
                "content": "content_a45c64b0096046b1beb4bfe881fc7a13",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_4c6b788a534247a9b1644d56e8d8d0e2-node_898fe3e28380434aa3bf88492196d897": {
              "sourceId": "node_4c6b788a534247a9b1644d56e8d8d0e2",
              "targetId": "node_898fe3e28380434aa3bf88492196d897",
              "data": {}
            }
          },
          "name": "talk_laisha_collect_fuel",
          "id": "storylet_b7147a4069634e0990e0ea171c276ff8",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_9ef16337ff624b4bb93946cfd66b5ad4": {
              "id": "node_9ef16337ff624b4bb93946cfd66b5ad4",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "fire_place_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_22151e30022d4290bdbacc7fd20c673c": {
              "id": "node_22151e30022d4290bdbacc7fd20c673c",
              "data": {
                "type": "sentence",
                "content": "content_7c3b2467299241318ec7b1070270ad72",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_48565bc7dcf2425a915dd1a9a2614a97": {
              "id": "node_48565bc7dcf2425a915dd1a9a2614a97",
              "data": {
                "type": "sentence",
                "content": "content_c1569715e978401cb4e9bdff2f74f792",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            }
          },
          "links": {
            "node_9ef16337ff624b4bb93946cfd66b5ad4-node_22151e30022d4290bdbacc7fd20c673c": {
              "sourceId": "node_9ef16337ff624b4bb93946cfd66b5ad4",
              "targetId": "node_22151e30022d4290bdbacc7fd20c673c",
              "data": {}
            },
            "node_9ef16337ff624b4bb93946cfd66b5ad4-node_48565bc7dcf2425a915dd1a9a2614a97": {
              "sourceId": "node_9ef16337ff624b4bb93946cfd66b5ad4",
              "targetId": "node_48565bc7dcf2425a915dd1a9a2614a97",
              "data": {}
            }
          },
          "name": "house_fire_place",
          "id": "storylet_4852c5f2d0874fd18febc116444d6f98",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_6b64d265ec5843b1b6b6377464488ec1": {
              "id": "node_6b64d265ec5843b1b6b6377464488ec1",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "table_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_98eb6c079df942cb89a5d84163b6c4b7": {
              "id": "node_98eb6c079df942cb89a5d84163b6c4b7",
              "data": {
                "type": "sentence",
                "content": "content_105cee1c74614a76adfbada96f79d082",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_04e0166269a6424abbd6ba13396ad625": {
              "id": "node_04e0166269a6424abbd6ba13396ad625",
              "data": {
                "type": "sentence",
                "content": "content_498a6bf8c86a41cd8926f3500c3d75e4",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_6b64d265ec5843b1b6b6377464488ec1-node_98eb6c079df942cb89a5d84163b6c4b7": {
              "sourceId": "node_6b64d265ec5843b1b6b6377464488ec1",
              "targetId": "node_98eb6c079df942cb89a5d84163b6c4b7",
              "data": {}
            },
            "node_98eb6c079df942cb89a5d84163b6c4b7-node_04e0166269a6424abbd6ba13396ad625": {
              "sourceId": "node_98eb6c079df942cb89a5d84163b6c4b7",
              "targetId": "node_04e0166269a6424abbd6ba13396ad625",
              "data": {}
            }
          },
          "name": "house_table",
          "id": "storylet_cfe60e96e6314c3fa9d4dda194233e98",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_6733af23d1c74fadbca4ada41c04b637": {
              "id": "node_6733af23d1c74fadbca4ada41c04b637",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "outside_find_joey"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return tracker.cnhs(\"house.events.start_fire\", \"parent_dead\")"
              }
            },
            "node_e89293b690db49128d2cc882dbc1b4e0": {
              "id": "node_e89293b690db49128d2cc882dbc1b4e0",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_SNOW_FIELD_FIND_JOEY)"
                  }
                },
                "enableCheck": ""
              }
            }
          },
          "links": {
            "node_6733af23d1c74fadbca4ada41c04b637-node_e89293b690db49128d2cc882dbc1b4e0": {
              "sourceId": "node_6733af23d1c74fadbca4ada41c04b637",
              "targetId": "node_e89293b690db49128d2cc882dbc1b4e0",
              "data": {}
            }
          },
          "name": "house_outside",
          "id": "storylet_d559c74344f140c080cdb01e483c3a76",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_3b13ada37202434d90eba459aa26c5d3": {
              "id": "node_3b13ada37202434d90eba459aa26c5d3",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "bookcase_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_504136744f56420f98b9d325ca4a3b5b": {
              "id": "node_504136744f56420f98b9d325ca4a3b5b",
              "data": {
                "type": "sentence",
                "content": "content_c4ee4976764443e4bc555e81f44881ba",
                "contentSpeed": {
                  "zh": [
                    null,
                    null,
                    null,
                    0.5,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_3b13ada37202434d90eba459aa26c5d3-node_504136744f56420f98b9d325ca4a3b5b": {
              "sourceId": "node_3b13ada37202434d90eba459aa26c5d3",
              "targetId": "node_504136744f56420f98b9d325ca4a3b5b",
              "data": {}
            }
          },
          "name": "house_bookcase",
          "id": "9a540edcd3b140f7bbd27ff9a2a64814",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_b9896838d9b14d77808a3f25f5d0818c": {
              "id": "node_b9896838d9b14d77808a3f25f5d0818c",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "underground_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_9d44f859b6ca4d809b3188c61d697d39": {
              "id": "node_9d44f859b6ca4d809b3188c61d697d39",
              "data": {
                "type": "sentence",
                "content": "content_76c19858e65a452aa8c00b6fbcbe6070",
                "contentSpeed": {
                  "zh": [
                    null,
                    null,
                    null,
                    0.5,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_10c4dc133386434283f740236aac7c37": {
              "id": "node_10c4dc133386434283f740236aac7c37",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_UNDERGROUND)"
                  }
                }
              }
            }
          },
          "links": {
            "node_b9896838d9b14d77808a3f25f5d0818c-node_9d44f859b6ca4d809b3188c61d697d39": {
              "sourceId": "node_b9896838d9b14d77808a3f25f5d0818c",
              "targetId": "node_9d44f859b6ca4d809b3188c61d697d39",
              "data": {}
            },
            "node_9d44f859b6ca4d809b3188c61d697d39-node_10c4dc133386434283f740236aac7c37": {
              "sourceId": "node_9d44f859b6ca4d809b3188c61d697d39",
              "targetId": "node_10c4dc133386434283f740236aac7c37",
              "data": {}
            }
          },
          "name": "house_underground",
          "id": "b69c35158c98432d9cfc74a45f137a8d",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_9071d410786d46fa867ac1491421f18c": {
              "id": "node_9071d410786d46fa867ac1491421f18c",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "windows"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_f86efa47abd44efb860ac782ee195b9b": {
              "id": "node_f86efa47abd44efb860ac782ee195b9b",
              "data": {
                "type": "sentence",
                "content": "content_2ab164155b204a7b97d0243e2d81e647",
                "contentSpeed": {
                  "zh": [
                    null,
                    null,
                    null,
                    0.5,
                    0.5,
                    0.5,
                    0.5,
                    0.5
                  ]
                },
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_9071d410786d46fa867ac1491421f18c-node_f86efa47abd44efb860ac782ee195b9b": {
              "sourceId": "node_9071d410786d46fa867ac1491421f18c",
              "targetId": "node_f86efa47abd44efb860ac782ee195b9b",
              "data": {}
            }
          },
          "name": "house_window",
          "id": "602d0e87a38c45b8b12126849e3e3a43",
          "conditions": []
        }
      },
      {
        "groupId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
        "data": {
          "nodes": {
            "node_7da124582d8440e9940df581ad188ee5": {
              "id": "node_7da124582d8440e9940df581ad188ee5",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "upstairs"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_6e4d0384debc4d73aa6a7c7e2d7b8810": {
              "id": "node_6e4d0384debc4d73aa6a7c7e2d7b8810",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE)"
                  }
                }
              }
            },
            "node_5671c1b870654bd2b8f0aa3511c52894": {
              "id": "node_5671c1b870654bd2b8f0aa3511c52894",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_FIRST_DINNER)"
                  }
                },
                "enableCheck": "return not tracker.nhs(context.current_process_node.id) and \\ \r\n    tracker.shs(\"house.events.start_fire\")"
              }
            }
          },
          "links": {
            "node_7da124582d8440e9940df581ad188ee5-node_5671c1b870654bd2b8f0aa3511c52894": {
              "sourceId": "node_7da124582d8440e9940df581ad188ee5",
              "targetId": "node_5671c1b870654bd2b8f0aa3511c52894",
              "data": {}
            },
            "node_7da124582d8440e9940df581ad188ee5-node_6e4d0384debc4d73aa6a7c7e2d7b8810": {
              "sourceId": "node_7da124582d8440e9940df581ad188ee5",
              "targetId": "node_6e4d0384debc4d73aa6a7c7e2d7b8810",
              "data": {}
            }
          },
          "name": "house_upstairs",
          "id": "7060bbe0f9274fd598f19784ec9efe5d",
          "conditions": []
        }
      },
      {
        "groupId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
        "data": {
          "nodes": {
            "node_ea71b74027ae48209899ca2ebe08c9b5": {
              "id": "node_ea71b74027ae48209899ca2ebe08c9b5",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "items"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_e7a121cc319b4e23887171c2cd15381a": {
              "id": "node_e7a121cc319b4e23887171c2cd15381a",
              "data": {
                "type": "sentence",
                "content": "content_b393ff92791449758c6a1a17e27c54e5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1e97066ab1874422ad8ac75c5cb0e5d1": {
              "id": "node_1e97066ab1874422ad8ac75c5cb0e5d1",
              "data": {
                "type": "sentence",
                "content": "content_73a9ba366ba74e85a323ccf542bdc60e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_ea71b74027ae48209899ca2ebe08c9b5-node_e7a121cc319b4e23887171c2cd15381a": {
              "sourceId": "node_ea71b74027ae48209899ca2ebe08c9b5",
              "targetId": "node_e7a121cc319b4e23887171c2cd15381a",
              "data": {}
            },
            "node_ea71b74027ae48209899ca2ebe08c9b5-node_1e97066ab1874422ad8ac75c5cb0e5d1": {
              "sourceId": "node_ea71b74027ae48209899ca2ebe08c9b5",
              "targetId": "node_1e97066ab1874422ad8ac75c5cb0e5d1",
              "data": {}
            }
          },
          "name": "items",
          "id": "storylet_5ca27b734eb64e52bea505e5edb22723",
          "conditions": []
        }
      },
      {
        "groupId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
        "data": {
          "nodes": {
            "node_ae6e3bc682454836b063b5b2d74ede36": {
              "id": "node_ae6e3bc682454836b063b5b2d74ede36",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "fuel_find"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_9e569afd6ed64e55a9a5db7096dc84b0": {
              "id": "node_9e569afd6ed64e55a9a5db7096dc84b0",
              "data": {
                "type": "sentence",
                "content": "content_15063b970b37464e9c0e159558665d32",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d3708e3784064369b8f266058410e1fb": {
              "id": "node_d3708e3784064369b8f266058410e1fb",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "manager.data.house_is_fire = true\r\nSceneChanger.change_scene(Constants.SCENES.HOUSE_INITIAL_START_FIRE)"
                  }
                }
              }
            }
          },
          "links": {
            "node_ae6e3bc682454836b063b5b2d74ede36-node_9e569afd6ed64e55a9a5db7096dc84b0": {
              "sourceId": "node_ae6e3bc682454836b063b5b2d74ede36",
              "targetId": "node_9e569afd6ed64e55a9a5db7096dc84b0",
              "data": {}
            },
            "node_9e569afd6ed64e55a9a5db7096dc84b0-node_d3708e3784064369b8f266058410e1fb": {
              "sourceId": "node_9e569afd6ed64e55a9a5db7096dc84b0",
              "targetId": "node_d3708e3784064369b8f266058410e1fb",
              "data": {}
            }
          },
          "name": "house_underground_fuel",
          "id": "4eb2da676a9746d088ab2d420e80da25",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_60e7f68ba39a4c7d8044cb750b2b75d2": {
              "id": "node_60e7f68ba39a4c7d8044cb750b2b75d2",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "start_fire"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_6013bbed494e43ce908679c184f4c3f6": {
              "id": "node_6013bbed494e43ce908679c184f4c3f6",
              "data": {
                "type": "sentence",
                "content": "content_a24cdb65c2ba428ea1ea28e317f18ee0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5dbde7d9d5dd4711aa08b38e25343335": {
              "id": "node_5dbde7d9d5dd4711aa08b38e25343335",
              "data": {
                "type": "sentence",
                "content": "content_38d58cf643464413866977333870ec16",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_eee16d5efebf452a9d383dadeaf79c5d": {
              "id": "node_eee16d5efebf452a9d383dadeaf79c5d",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\n"
                  }
                }
              }
            },
            "node_9c81c5ccfa8748c3b061ff192d625ac3": {
              "id": "node_9c81c5ccfa8748c3b061ff192d625ac3",
              "data": {
                "type": "sentence",
                "content": "content_a83ee6bc48d6469bb0f4db1f1fd099ae",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e7d06ae2e69c4fa7a36be6c0265fc95b": {
              "id": "node_e7d06ae2e69c4fa7a36be6c0265fc95b",
              "data": {
                "type": "sentence",
                "content": "content_439aca74cc11489bb18a72ab16658327",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_52d9370ecc8e44198ee0be7a5505e8c1": {
              "id": "node_52d9370ecc8e44198ee0be7a5505e8c1",
              "data": {
                "type": "sentence",
                "content": "content_1572b92c0f9245ac851abeaa14faf9ab",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_24f326e30e8e4cd58ff4bdc03639782d": {
              "id": "node_24f326e30e8e4cd58ff4bdc03639782d",
              "data": {
                "type": "sentence",
                "content": "content_eb52ac4952bf43be9ebab9d2c4e0053a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1a176ecee1f449fc93d3ab10f9b8d256": {
              "id": "node_1a176ecee1f449fc93d3ab10f9b8d256",
              "data": {
                "type": "branch",
                "content": "content_ba75bb5cb7904ea69ffc33c375b70376",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_15dfa942459e427dbdcd572af279fd26": {
              "id": "node_15dfa942459e427dbdcd572af279fd26",
              "data": {
                "type": "sentence",
                "content": "content_17564c4fcb8c4a02b3385a8c0ea0a20f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d7deb45c05dc439d98b92767a67a5a1e": {
              "id": "node_d7deb45c05dc439d98b92767a67a5a1e",
              "data": {
                "type": "sentence",
                "content": "content_bad2cf619d104527a3a86a2975091c61",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_dca15ff93d884baea68147827d1cc4c7": {
              "id": "node_dca15ff93d884baea68147827d1cc4c7",
              "data": {
                "type": "sentence",
                "content": "content_7ca11a4d93e24e34915974a6d8cf7c82",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "parent_dead"
              }
            },
            "node_8d9fa37eb3e9457895596ce0777fbb1e": {
              "id": "node_8d9fa37eb3e9457895596ce0777fbb1e",
              "data": {
                "type": "sentence",
                "content": "content_188e2c7e6da341f2981839ae19e076d3",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ba2ee24e734d4351ac6de545a1ae92bf": {
              "id": "node_ba2ee24e734d4351ac6de545a1ae92bf",
              "data": {
                "type": "sentence",
                "content": "content_2bd88789b6504b00b870adfe03aab51a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_314ceb23abbc444fb623be6107f1b4e4": {
              "id": "node_314ceb23abbc444fb623be6107f1b4e4",
              "data": {
                "type": "sentence",
                "content": "content_0ac20dc993994cfc8b47b2e00a4ef8a1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_247f22af9f5e4321bca2e883335aa741": {
              "id": "node_247f22af9f5e4321bca2e883335aa741",
              "data": {
                "type": "sentence",
                "content": "content_790b813c9f3449bd834f0c9bb48e0d38",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_240f1510390a4a79ba172501a9a0d79b": {
              "id": "node_240f1510390a4a79ba172501a9a0d79b",
              "data": {
                "type": "sentence",
                "content": "content_fc00ff1a7fc341409bd2ed36c14fc017",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_057cd2ab2bed4c0da0252f408b45f5a0": {
              "id": "node_057cd2ab2bed4c0da0252f408b45f5a0",
              "data": {
                "type": "sentence",
                "content": "content_19cf1a96a5a7454d800f2d9adca880f2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9993d45ae1254154b0ab34519dde7a42": {
              "id": "node_9993d45ae1254154b0ab34519dde7a42",
              "data": {
                "type": "sentence",
                "content": "content_bbb5bc8b18ee4e4494210d8ceba54c42",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c8dad50593c94b4e81e22c3643d4c321": {
              "id": "node_c8dad50593c94b4e81e22c3643d4c321",
              "data": {
                "type": "sentence",
                "content": "content_6463b4de5ba04413a4d999cb404db6cd",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e5cf5b836cda4f02b8c11316421769ad": {
              "id": "node_e5cf5b836cda4f02b8c11316421769ad",
              "data": {
                "type": "sentence",
                "content": "content_0998ee1c82fd4bf18073f90b4a86c028",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f6f2a4c2f5704d44a3541cad66f01988": {
              "id": "node_f6f2a4c2f5704d44a3541cad66f01988",
              "data": {
                "type": "sentence",
                "content": "content_8fc6bf93e552405593c44e583750e721",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8d34302bb51e4e599f10bf4a82a09e84": {
              "id": "node_8d34302bb51e4e599f10bf4a82a09e84",
              "data": {
                "type": "sentence",
                "content": "content_176b269b9af24915b87d4ab6560da17e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ddec0cb578a5434caa9662c10351fc1a": {
              "id": "node_ddec0cb578a5434caa9662c10351fc1a",
              "data": {
                "type": "sentence",
                "content": "content_c7642cc7511a440fb20fabcf02d711b6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_814ac47a85974c46b8431447997a0df0": {
              "id": "node_814ac47a85974c46b8431447997a0df0",
              "data": {
                "type": "sentence",
                "content": "content_aaa2c374660a4c81803f327df6245888",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5397abc12f8c4606ba450bf54ad6ef5c": {
              "id": "node_5397abc12f8c4606ba450bf54ad6ef5c",
              "data": {
                "type": "sentence",
                "content": "content_211f3ebe28b444dda367aaadd6249ee5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_edc1c3c898694ca1a464f4a61b60b94d": {
              "id": "node_edc1c3c898694ca1a464f4a61b60b94d",
              "data": {
                "type": "sentence",
                "content": "content_b65d24bfb5d1420f890eb3c88b9a9f3c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_43b61d116fbb4380a77a78e7ebec197e": {
              "id": "node_43b61d116fbb4380a77a78e7ebec197e",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_eb524bc10caf46f5943009e0ee6fe3c2": {
              "id": "node_eb524bc10caf46f5943009e0ee6fe3c2",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_92612e303a80417f936d43fc13be9430": {
              "id": "node_92612e303a80417f936d43fc13be9430",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_cfe753b7234247fba8cf851fef89a603": {
              "id": "node_cfe753b7234247fba8cf851fef89a603",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"joey\"].enabled = true\r\ncontext.character_map[\"joey\"].SPEED = 350\r\ncontext.character_map[\"joey\"].direction = \"left\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\n\r\nawait context.root.get_tree().create_timer(0.3).timeout\r\n\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\nawait context.root.get_tree().create_timer(1.0).timeout\r\ncontext.character_map[\"joey\"].queue_free()\r\n\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_f03f760ad3d24e1483213a191c7680b9": {
              "id": "node_f03f760ad3d24e1483213a191c7680b9",
              "data": {
                "type": "sentence",
                "content": "content_5864299e6cac4c7e929411b5bc6a4e25",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_78d5fe626ce547919dd6ad8de3a26741": {
              "id": "node_78d5fe626ce547919dd6ad8de3a26741",
              "data": {
                "type": "sentence",
                "content": "content_58867bd856a448f1a6ddbc0c687da981",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8cc2add789b74adfb24435a572060420": {
              "id": "node_8cc2add789b74adfb24435a572060420",
              "data": {
                "type": "sentence",
                "content": "content_29ba471463cb4c0fa7cc71c6232a1235",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0fe61dc3221e432bab655fdd51f614a6": {
              "id": "node_0fe61dc3221e432bab655fdd51f614a6",
              "data": {
                "type": "sentence",
                "content": "content_e8e45afc650842df9b9c798ad7d48b16",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_acf57325a3e24f78936b2c691cc54a53": {
              "id": "node_acf57325a3e24f78936b2c691cc54a53",
              "data": {
                "type": "sentence",
                "content": "content_5fa9ddcf74844b168646ee805aa9e370",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_46982ef2bc2542d59fd920ec9c033802": {
              "id": "node_46982ef2bc2542d59fd920ec9c033802",
              "data": {
                "type": "sentence",
                "content": "content_b8d0df33e9e34d9792014148473fa575",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_60e7f68ba39a4c7d8044cb750b2b75d2-node_eee16d5efebf452a9d383dadeaf79c5d": {
              "sourceId": "node_60e7f68ba39a4c7d8044cb750b2b75d2",
              "targetId": "node_eee16d5efebf452a9d383dadeaf79c5d",
              "data": {}
            },
            "node_eee16d5efebf452a9d383dadeaf79c5d-node_9c81c5ccfa8748c3b061ff192d625ac3": {
              "sourceId": "node_eee16d5efebf452a9d383dadeaf79c5d",
              "targetId": "node_9c81c5ccfa8748c3b061ff192d625ac3",
              "data": {}
            },
            "node_9c81c5ccfa8748c3b061ff192d625ac3-node_6013bbed494e43ce908679c184f4c3f6": {
              "sourceId": "node_9c81c5ccfa8748c3b061ff192d625ac3",
              "targetId": "node_6013bbed494e43ce908679c184f4c3f6",
              "data": {}
            },
            "node_6013bbed494e43ce908679c184f4c3f6-node_e7d06ae2e69c4fa7a36be6c0265fc95b": {
              "sourceId": "node_6013bbed494e43ce908679c184f4c3f6",
              "targetId": "node_e7d06ae2e69c4fa7a36be6c0265fc95b",
              "data": {}
            },
            "node_e7d06ae2e69c4fa7a36be6c0265fc95b-node_52d9370ecc8e44198ee0be7a5505e8c1": {
              "sourceId": "node_e7d06ae2e69c4fa7a36be6c0265fc95b",
              "targetId": "node_52d9370ecc8e44198ee0be7a5505e8c1",
              "data": {}
            },
            "node_52d9370ecc8e44198ee0be7a5505e8c1-node_5dbde7d9d5dd4711aa08b38e25343335": {
              "sourceId": "node_52d9370ecc8e44198ee0be7a5505e8c1",
              "targetId": "node_5dbde7d9d5dd4711aa08b38e25343335",
              "data": {}
            },
            "node_24f326e30e8e4cd58ff4bdc03639782d-node_1a176ecee1f449fc93d3ab10f9b8d256": {
              "sourceId": "node_24f326e30e8e4cd58ff4bdc03639782d",
              "targetId": "node_1a176ecee1f449fc93d3ab10f9b8d256",
              "data": {}
            },
            "node_dca15ff93d884baea68147827d1cc4c7-node_8d9fa37eb3e9457895596ce0777fbb1e": {
              "sourceId": "node_dca15ff93d884baea68147827d1cc4c7",
              "targetId": "node_8d9fa37eb3e9457895596ce0777fbb1e",
              "data": {}
            },
            "node_15dfa942459e427dbdcd572af279fd26-node_ba2ee24e734d4351ac6de545a1ae92bf": {
              "sourceId": "node_15dfa942459e427dbdcd572af279fd26",
              "targetId": "node_ba2ee24e734d4351ac6de545a1ae92bf",
              "data": {}
            },
            "node_d7deb45c05dc439d98b92767a67a5a1e-node_314ceb23abbc444fb623be6107f1b4e4": {
              "sourceId": "node_d7deb45c05dc439d98b92767a67a5a1e",
              "targetId": "node_314ceb23abbc444fb623be6107f1b4e4",
              "data": {}
            },
            "node_247f22af9f5e4321bca2e883335aa741-node_240f1510390a4a79ba172501a9a0d79b": {
              "sourceId": "node_247f22af9f5e4321bca2e883335aa741",
              "targetId": "node_240f1510390a4a79ba172501a9a0d79b",
              "data": {}
            },
            "node_240f1510390a4a79ba172501a9a0d79b-node_057cd2ab2bed4c0da0252f408b45f5a0": {
              "sourceId": "node_240f1510390a4a79ba172501a9a0d79b",
              "targetId": "node_057cd2ab2bed4c0da0252f408b45f5a0",
              "data": {}
            },
            "node_057cd2ab2bed4c0da0252f408b45f5a0-node_9993d45ae1254154b0ab34519dde7a42": {
              "sourceId": "node_057cd2ab2bed4c0da0252f408b45f5a0",
              "targetId": "node_9993d45ae1254154b0ab34519dde7a42",
              "data": {}
            },
            "node_9993d45ae1254154b0ab34519dde7a42-node_c8dad50593c94b4e81e22c3643d4c321": {
              "sourceId": "node_9993d45ae1254154b0ab34519dde7a42",
              "targetId": "node_c8dad50593c94b4e81e22c3643d4c321",
              "data": {}
            },
            "node_c8dad50593c94b4e81e22c3643d4c321-node_e5cf5b836cda4f02b8c11316421769ad": {
              "sourceId": "node_c8dad50593c94b4e81e22c3643d4c321",
              "targetId": "node_e5cf5b836cda4f02b8c11316421769ad",
              "data": {}
            },
            "node_e5cf5b836cda4f02b8c11316421769ad-node_f6f2a4c2f5704d44a3541cad66f01988": {
              "sourceId": "node_e5cf5b836cda4f02b8c11316421769ad",
              "targetId": "node_f6f2a4c2f5704d44a3541cad66f01988",
              "data": {}
            },
            "node_8d34302bb51e4e599f10bf4a82a09e84-node_ddec0cb578a5434caa9662c10351fc1a": {
              "sourceId": "node_8d34302bb51e4e599f10bf4a82a09e84",
              "targetId": "node_ddec0cb578a5434caa9662c10351fc1a",
              "data": {}
            },
            "node_ddec0cb578a5434caa9662c10351fc1a-node_814ac47a85974c46b8431447997a0df0": {
              "sourceId": "node_ddec0cb578a5434caa9662c10351fc1a",
              "targetId": "node_814ac47a85974c46b8431447997a0df0",
              "data": {}
            },
            "node_814ac47a85974c46b8431447997a0df0-node_5397abc12f8c4606ba450bf54ad6ef5c": {
              "sourceId": "node_814ac47a85974c46b8431447997a0df0",
              "targetId": "node_5397abc12f8c4606ba450bf54ad6ef5c",
              "data": {}
            },
            "node_5397abc12f8c4606ba450bf54ad6ef5c-node_edc1c3c898694ca1a464f4a61b60b94d": {
              "sourceId": "node_5397abc12f8c4606ba450bf54ad6ef5c",
              "targetId": "node_edc1c3c898694ca1a464f4a61b60b94d",
              "data": {}
            },
            "node_5dbde7d9d5dd4711aa08b38e25343335-node_43b61d116fbb4380a77a78e7ebec197e": {
              "sourceId": "node_5dbde7d9d5dd4711aa08b38e25343335",
              "targetId": "node_43b61d116fbb4380a77a78e7ebec197e",
              "data": {}
            },
            "node_43b61d116fbb4380a77a78e7ebec197e-node_24f326e30e8e4cd58ff4bdc03639782d": {
              "sourceId": "node_43b61d116fbb4380a77a78e7ebec197e",
              "targetId": "node_24f326e30e8e4cd58ff4bdc03639782d",
              "data": {}
            },
            "node_1a176ecee1f449fc93d3ab10f9b8d256-node_eb524bc10caf46f5943009e0ee6fe3c2": {
              "sourceId": "node_1a176ecee1f449fc93d3ab10f9b8d256",
              "targetId": "node_eb524bc10caf46f5943009e0ee6fe3c2",
              "data": {
                "optionName": "option_49d82d82ce04400497bc3e95ec6b6c31",
                "optionId": ""
              }
            },
            "node_eb524bc10caf46f5943009e0ee6fe3c2-node_d7deb45c05dc439d98b92767a67a5a1e": {
              "sourceId": "node_eb524bc10caf46f5943009e0ee6fe3c2",
              "targetId": "node_d7deb45c05dc439d98b92767a67a5a1e",
              "data": {}
            },
            "node_314ceb23abbc444fb623be6107f1b4e4-node_247f22af9f5e4321bca2e883335aa741": {
              "sourceId": "node_314ceb23abbc444fb623be6107f1b4e4",
              "targetId": "node_247f22af9f5e4321bca2e883335aa741",
              "data": {}
            },
            "node_1a176ecee1f449fc93d3ab10f9b8d256-node_92612e303a80417f936d43fc13be9430": {
              "sourceId": "node_1a176ecee1f449fc93d3ab10f9b8d256",
              "targetId": "node_92612e303a80417f936d43fc13be9430",
              "data": {
                "optionName": "option_b31715547be844028f31bf6b64d3bfd2",
                "optionId": ""
              }
            },
            "node_92612e303a80417f936d43fc13be9430-node_dca15ff93d884baea68147827d1cc4c7": {
              "sourceId": "node_92612e303a80417f936d43fc13be9430",
              "targetId": "node_dca15ff93d884baea68147827d1cc4c7",
              "data": {}
            },
            "node_8d9fa37eb3e9457895596ce0777fbb1e-node_cfe753b7234247fba8cf851fef89a603": {
              "sourceId": "node_8d9fa37eb3e9457895596ce0777fbb1e",
              "targetId": "node_cfe753b7234247fba8cf851fef89a603",
              "data": {}
            },
            "node_cfe753b7234247fba8cf851fef89a603-node_15dfa942459e427dbdcd572af279fd26": {
              "sourceId": "node_cfe753b7234247fba8cf851fef89a603",
              "targetId": "node_15dfa942459e427dbdcd572af279fd26",
              "data": {}
            },
            "node_f6f2a4c2f5704d44a3541cad66f01988-node_f03f760ad3d24e1483213a191c7680b9": {
              "sourceId": "node_f6f2a4c2f5704d44a3541cad66f01988",
              "targetId": "node_f03f760ad3d24e1483213a191c7680b9",
              "data": {}
            },
            "node_f03f760ad3d24e1483213a191c7680b9-node_78d5fe626ce547919dd6ad8de3a26741": {
              "sourceId": "node_f03f760ad3d24e1483213a191c7680b9",
              "targetId": "node_78d5fe626ce547919dd6ad8de3a26741",
              "data": {}
            },
            "node_78d5fe626ce547919dd6ad8de3a26741-node_8cc2add789b74adfb24435a572060420": {
              "sourceId": "node_78d5fe626ce547919dd6ad8de3a26741",
              "targetId": "node_8cc2add789b74adfb24435a572060420",
              "data": {}
            },
            "node_8cc2add789b74adfb24435a572060420-node_0fe61dc3221e432bab655fdd51f614a6": {
              "sourceId": "node_8cc2add789b74adfb24435a572060420",
              "targetId": "node_0fe61dc3221e432bab655fdd51f614a6",
              "data": {}
            },
            "node_0fe61dc3221e432bab655fdd51f614a6-node_acf57325a3e24f78936b2c691cc54a53": {
              "sourceId": "node_0fe61dc3221e432bab655fdd51f614a6",
              "targetId": "node_acf57325a3e24f78936b2c691cc54a53",
              "data": {}
            },
            "node_acf57325a3e24f78936b2c691cc54a53-node_46982ef2bc2542d59fd920ec9c033802": {
              "sourceId": "node_acf57325a3e24f78936b2c691cc54a53",
              "targetId": "node_46982ef2bc2542d59fd920ec9c033802",
              "data": {}
            },
            "node_46982ef2bc2542d59fd920ec9c033802-node_8d34302bb51e4e599f10bf4a82a09e84": {
              "sourceId": "node_46982ef2bc2542d59fd920ec9c033802",
              "targetId": "node_8d34302bb51e4e599f10bf4a82a09e84",
              "data": {}
            }
          },
          "name": "storylet16",
          "id": "025316e348794cdc9641aa372bb22fa2",
          "conditions": []
        }
      },
      {
        "groupId": "group_f27c425f9f4940e88f2faa642c0583db",
        "data": {
          "nodes": {
            "node_a05bccbadb844879bf55d29ea4ed2069": {
              "id": "node_a05bccbadb844879bf55d29ea4ed2069",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "initial_talk"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_48d5b3a1356b413b925a299fbe660016": {
              "id": "node_48d5b3a1356b413b925a299fbe660016",
              "data": {
                "type": "sentence",
                "content": "content_f6ea138988304f369cdd206e29011a92",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_55970bc4723347b0b2cc4876492c9a06": {
              "id": "node_55970bc4723347b0b2cc4876492c9a06",
              "data": {
                "type": "sentence",
                "content": "content_6b87949559f146b1bca8c36d4a023451",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_498b6cf706d94bd78d2972a2ddef4f0d": {
              "id": "node_498b6cf706d94bd78d2972a2ddef4f0d",
              "data": {
                "type": "sentence",
                "content": "content_a545034444fa4ce48652fb24d87cf994",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9a8a4f32d8e94e148240931c80494bfc": {
              "id": "node_9a8a4f32d8e94e148240931c80494bfc",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"joey\"].enabled = true\r\ncontext.character_map[\"joey\"].SPEED = 600\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\nawait context.root.get_tree().create_timer(0.7).timeout\r\n\r\ncontext.character_map[\"joey\"].SPEED = 5000\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\nawait context.root.get_tree().create_timer(0.3).timeout\r\n\r\ncontext.character_map[\"joey\"].direction = \"up\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\nawait context.root.get_tree().create_timer(0.2).timeout\r\ncontext.character_map[\"joey\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_636e430e3e11407c9b6839cad473a5cf": {
              "id": "node_636e430e3e11407c9b6839cad473a5cf",
              "data": {
                "type": "sentence",
                "content": "content_baa4284eb95f4698961e3e4ae31c4a6b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d19f66f9026f4be2b1ffe739c2869f83": {
              "id": "node_d19f66f9026f4be2b1ffe739c2869f83",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].enabled = false\r\ncontext.character_map[\"sheng_qi\"].direction = \"down\"\r\ncontext.character_map[\"sheng_qi\"].start_animation(\"idle\")\r\n\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].start_animation(\"idle\")"
                  }
                }
              }
            }
          },
          "links": {
            "node_48d5b3a1356b413b925a299fbe660016-node_55970bc4723347b0b2cc4876492c9a06": {
              "sourceId": "node_48d5b3a1356b413b925a299fbe660016",
              "targetId": "node_55970bc4723347b0b2cc4876492c9a06",
              "data": {}
            },
            "node_55970bc4723347b0b2cc4876492c9a06-node_498b6cf706d94bd78d2972a2ddef4f0d": {
              "sourceId": "node_55970bc4723347b0b2cc4876492c9a06",
              "targetId": "node_498b6cf706d94bd78d2972a2ddef4f0d",
              "data": {}
            },
            "node_9a8a4f32d8e94e148240931c80494bfc-node_48d5b3a1356b413b925a299fbe660016": {
              "sourceId": "node_9a8a4f32d8e94e148240931c80494bfc",
              "targetId": "node_48d5b3a1356b413b925a299fbe660016",
              "data": {}
            },
            "node_636e430e3e11407c9b6839cad473a5cf-node_9a8a4f32d8e94e148240931c80494bfc": {
              "sourceId": "node_636e430e3e11407c9b6839cad473a5cf",
              "targetId": "node_9a8a4f32d8e94e148240931c80494bfc",
              "data": {}
            },
            "node_a05bccbadb844879bf55d29ea4ed2069-node_d19f66f9026f4be2b1ffe739c2869f83": {
              "sourceId": "node_a05bccbadb844879bf55d29ea4ed2069",
              "targetId": "node_d19f66f9026f4be2b1ffe739c2869f83",
              "data": {}
            },
            "node_d19f66f9026f4be2b1ffe739c2869f83-node_636e430e3e11407c9b6839cad473a5cf": {
              "sourceId": "node_d19f66f9026f4be2b1ffe739c2869f83",
              "targetId": "node_636e430e3e11407c9b6839cad473a5cf",
              "data": {}
            }
          },
          "name": "storylet5",
          "id": "storylet_bad12a2110d348b7bbdf5ccccfb6e96b",
          "conditions": []
        }
      },
      {
        "groupId": "group_f27c425f9f4940e88f2faa642c0583db",
        "data": {
          "nodes": {
            "node_b125f81a3e574ec2886a78f283f55593": {
              "id": "node_b125f81a3e574ec2886a78f283f55593",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "joey_gohome"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_fa1dff1e3d674564aeb871abe6bb9e86": {
              "id": "node_fa1dff1e3d674564aeb871abe6bb9e86",
              "data": {
                "type": "sentence",
                "content": "content_9e481a672d494c38974f6ddf95b912a0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ef9d4e72f6d04dfcac69a74c327ecaaf": {
              "id": "node_ef9d4e72f6d04dfcac69a74c327ecaaf",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"joey\"].face_to(context.character_map[\"sheng_qi\"])\r\ncontext.character_map[\"joey\"].start_animation(\"idle\")"
                  }
                }
              }
            },
            "node_a8a0ae9ed30242218d90023dbc55f6d2": {
              "id": "node_a8a0ae9ed30242218d90023dbc55f6d2",
              "data": {
                "type": "sentence",
                "content": "content_5b41e035a0fc418688b6f9ccac8794fc",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_87b926c08a3f407d992d17cb53bab20a": {
              "id": "node_87b926c08a3f407d992d17cb53bab20a",
              "data": {
                "type": "sentence",
                "content": "content_6e186100ef31433b854c57a87be15f07",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_90a2ec49fa6046e2a72bb58de3441a59": {
              "id": "node_90a2ec49fa6046e2a72bb58de3441a59",
              "data": {
                "type": "branch",
                "content": "content_fc266aa9d8c5451a934dab2d9954af9f",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_35690358dee54cdf9505cd8c1ec53a63": {
              "id": "node_35690358dee54cdf9505cd8c1ec53a63",
              "data": {
                "type": "sentence",
                "content": "content_b40af80211c64b43818037b137d69e23",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a20205c17f814dba8aabd35698d07eec": {
              "id": "node_a20205c17f814dba8aabd35698d07eec",
              "data": {
                "type": "sentence",
                "content": "content_02d2b96fa5164a7ebd2a97a306bcf963",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_cf1f5c0dabed49159b97f9358a6541b2": {
              "id": "node_cf1f5c0dabed49159b97f9358a6541b2",
              "data": {
                "type": "sentence",
                "content": "content_2cf1d1f380094c3d9b5d81144522f762",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0fde606fafeb4291b0e2f1bfe34f6d21": {
              "id": "node_0fde606fafeb4291b0e2f1bfe34f6d21",
              "data": {
                "type": "sentence",
                "content": "content_908255f6b0c445159f82db0514cce385",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8e340fb6d6384511b191fa12e451dae2": {
              "id": "node_8e340fb6d6384511b191fa12e451dae2",
              "data": {
                "type": "sentence",
                "content": "content_b97453de972d43a486dcb987d25bd659",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_24727c39eac04fe096dc6cf601450536": {
              "id": "node_24727c39eac04fe096dc6cf601450536",
              "data": {
                "type": "sentence",
                "content": "content_f48268b84282424381b292870bd8b723",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_077473398f3e4a0e99c3b8f372ee5a58": {
              "id": "node_077473398f3e4a0e99c3b8f372ee5a58",
              "data": {
                "type": "sentence",
                "content": "content_c03cfb62a2264d968b168ba1b2e17ab9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3971413ce1ab4d8e8eb0909ba6f64ba6": {
              "id": "node_3971413ce1ab4d8e8eb0909ba6f64ba6",
              "data": {
                "type": "sentence",
                "content": "content_02a6641d49f847f084f1ca5717c9d536",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d2b110eeac4a46219749290c3a3d3028": {
              "id": "node_d2b110eeac4a46219749290c3a3d3028",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_JOEY_COMEBACK)"
                  }
                }
              }
            },
            "node_0f25c95adf2e453fa110774f1547090f": {
              "id": "node_0f25c95adf2e453fa110774f1547090f",
              "data": {
                "type": "sentence",
                "content": "content_a6171b06561143809eddaa18a17dc3f7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d20d3a54f62c4fa795d6218ddebd3d61": {
              "id": "node_d20d3a54f62c4fa795d6218ddebd3d61",
              "data": {
                "type": "sentence",
                "content": "content_a4963bcd7d054ddb8d9f21e6ea62b77e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7ddc547cae404c8798e6f2195a080c4c": {
              "id": "node_7ddc547cae404c8798e6f2195a080c4c",
              "data": {
                "type": "sentence",
                "content": "content_ae524ae9c7944fb8814f4086b3696b75",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0218b97ab7524dac9cbfedf9c61431cb": {
              "id": "node_0218b97ab7524dac9cbfedf9c61431cb",
              "data": {
                "type": "sentence",
                "content": "content_42fd9fa6725942af97efeb5c03476c6b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5bd8b7bf899d474490f1e4b4674a52bf": {
              "id": "node_5bd8b7bf899d474490f1e4b4674a52bf",
              "data": {
                "type": "sentence",
                "content": "content_168049d3ede449f3b2a7ed715e7994d5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a31d17202d434daab9f987a9bcc327a1": {
              "id": "node_a31d17202d434daab9f987a9bcc327a1",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE)"
                  }
                }
              }
            }
          },
          "links": {
            "node_a8a0ae9ed30242218d90023dbc55f6d2-node_ef9d4e72f6d04dfcac69a74c327ecaaf": {
              "sourceId": "node_a8a0ae9ed30242218d90023dbc55f6d2",
              "targetId": "node_ef9d4e72f6d04dfcac69a74c327ecaaf",
              "data": {}
            },
            "node_b125f81a3e574ec2886a78f283f55593-node_a8a0ae9ed30242218d90023dbc55f6d2": {
              "sourceId": "node_b125f81a3e574ec2886a78f283f55593",
              "targetId": "node_a8a0ae9ed30242218d90023dbc55f6d2",
              "data": {}
            },
            "node_ef9d4e72f6d04dfcac69a74c327ecaaf-node_87b926c08a3f407d992d17cb53bab20a": {
              "sourceId": "node_ef9d4e72f6d04dfcac69a74c327ecaaf",
              "targetId": "node_87b926c08a3f407d992d17cb53bab20a",
              "data": {}
            },
            "node_87b926c08a3f407d992d17cb53bab20a-node_fa1dff1e3d674564aeb871abe6bb9e86": {
              "sourceId": "node_87b926c08a3f407d992d17cb53bab20a",
              "targetId": "node_fa1dff1e3d674564aeb871abe6bb9e86",
              "data": {}
            },
            "node_fa1dff1e3d674564aeb871abe6bb9e86-node_90a2ec49fa6046e2a72bb58de3441a59": {
              "sourceId": "node_fa1dff1e3d674564aeb871abe6bb9e86",
              "targetId": "node_90a2ec49fa6046e2a72bb58de3441a59",
              "data": {}
            },
            "node_90a2ec49fa6046e2a72bb58de3441a59-node_35690358dee54cdf9505cd8c1ec53a63": {
              "sourceId": "node_90a2ec49fa6046e2a72bb58de3441a59",
              "targetId": "node_35690358dee54cdf9505cd8c1ec53a63",
              "data": {
                "optionName": "option_11a6b83a5015480597cb7a666fabe244",
                "optionId": ""
              }
            },
            "node_90a2ec49fa6046e2a72bb58de3441a59-node_a20205c17f814dba8aabd35698d07eec": {
              "sourceId": "node_90a2ec49fa6046e2a72bb58de3441a59",
              "targetId": "node_a20205c17f814dba8aabd35698d07eec",
              "data": {
                "optionName": "option_d2f3d3a701954cfea8dd57a2e6fe60b0",
                "optionId": ""
              }
            },
            "node_35690358dee54cdf9505cd8c1ec53a63-node_cf1f5c0dabed49159b97f9358a6541b2": {
              "sourceId": "node_35690358dee54cdf9505cd8c1ec53a63",
              "targetId": "node_cf1f5c0dabed49159b97f9358a6541b2",
              "data": {}
            },
            "node_cf1f5c0dabed49159b97f9358a6541b2-node_0fde606fafeb4291b0e2f1bfe34f6d21": {
              "sourceId": "node_cf1f5c0dabed49159b97f9358a6541b2",
              "targetId": "node_0fde606fafeb4291b0e2f1bfe34f6d21",
              "data": {}
            },
            "node_0fde606fafeb4291b0e2f1bfe34f6d21-node_8e340fb6d6384511b191fa12e451dae2": {
              "sourceId": "node_0fde606fafeb4291b0e2f1bfe34f6d21",
              "targetId": "node_8e340fb6d6384511b191fa12e451dae2",
              "data": {}
            },
            "node_8e340fb6d6384511b191fa12e451dae2-node_24727c39eac04fe096dc6cf601450536": {
              "sourceId": "node_8e340fb6d6384511b191fa12e451dae2",
              "targetId": "node_24727c39eac04fe096dc6cf601450536",
              "data": {}
            },
            "node_24727c39eac04fe096dc6cf601450536-node_077473398f3e4a0e99c3b8f372ee5a58": {
              "sourceId": "node_24727c39eac04fe096dc6cf601450536",
              "targetId": "node_077473398f3e4a0e99c3b8f372ee5a58",
              "data": {}
            },
            "node_077473398f3e4a0e99c3b8f372ee5a58-node_3971413ce1ab4d8e8eb0909ba6f64ba6": {
              "sourceId": "node_077473398f3e4a0e99c3b8f372ee5a58",
              "targetId": "node_3971413ce1ab4d8e8eb0909ba6f64ba6",
              "data": {}
            },
            "node_3971413ce1ab4d8e8eb0909ba6f64ba6-node_d2b110eeac4a46219749290c3a3d3028": {
              "sourceId": "node_3971413ce1ab4d8e8eb0909ba6f64ba6",
              "targetId": "node_d2b110eeac4a46219749290c3a3d3028",
              "data": {}
            },
            "node_0f25c95adf2e453fa110774f1547090f-node_d20d3a54f62c4fa795d6218ddebd3d61": {
              "sourceId": "node_0f25c95adf2e453fa110774f1547090f",
              "targetId": "node_d20d3a54f62c4fa795d6218ddebd3d61",
              "data": {}
            },
            "node_a20205c17f814dba8aabd35698d07eec-node_7ddc547cae404c8798e6f2195a080c4c": {
              "sourceId": "node_a20205c17f814dba8aabd35698d07eec",
              "targetId": "node_7ddc547cae404c8798e6f2195a080c4c",
              "data": {}
            },
            "node_7ddc547cae404c8798e6f2195a080c4c-node_0f25c95adf2e453fa110774f1547090f": {
              "sourceId": "node_7ddc547cae404c8798e6f2195a080c4c",
              "targetId": "node_0f25c95adf2e453fa110774f1547090f",
              "data": {}
            },
            "node_d20d3a54f62c4fa795d6218ddebd3d61-node_0218b97ab7524dac9cbfedf9c61431cb": {
              "sourceId": "node_d20d3a54f62c4fa795d6218ddebd3d61",
              "targetId": "node_0218b97ab7524dac9cbfedf9c61431cb",
              "data": {}
            },
            "node_0218b97ab7524dac9cbfedf9c61431cb-node_5bd8b7bf899d474490f1e4b4674a52bf": {
              "sourceId": "node_0218b97ab7524dac9cbfedf9c61431cb",
              "targetId": "node_5bd8b7bf899d474490f1e4b4674a52bf",
              "data": {}
            },
            "node_5bd8b7bf899d474490f1e4b4674a52bf-node_a31d17202d434daab9f987a9bcc327a1": {
              "sourceId": "node_5bd8b7bf899d474490f1e4b4674a52bf",
              "targetId": "node_a31d17202d434daab9f987a9bcc327a1",
              "data": {}
            }
          },
          "name": "storylet18",
          "id": "002fef6eb838455b903c2f62ad6f317b",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_07ae2e584d934276b6bb45b848c0f2f3": {
              "id": "node_07ae2e584d934276b6bb45b848c0f2f3",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "joey_comeback_talk"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_9eb1a6c1886d4b3bb34420c7456cb8eb": {
              "id": "node_9eb1a6c1886d4b3bb34420c7456cb8eb",
              "data": {
                "type": "sentence",
                "content": "content_987e89387bbd4d01bd8e28ef5116ee6a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1080a833eb634e8fb9a2fcb279ebb264": {
              "id": "node_1080a833eb634e8fb9a2fcb279ebb264",
              "data": {
                "type": "sentence",
                "content": "content_d23e7af52dbc4062a0f52320f70dc3c2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f966bef101bb4c33a27f5f296d752662": {
              "id": "node_f966bef101bb4c33a27f5f296d752662",
              "data": {
                "type": "sentence",
                "content": "content_96aa3c337ea74787b741397664fc62fe",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_65ed8ce92ae34018af77546d451af16d": {
              "id": "node_65ed8ce92ae34018af77546d451af16d",
              "data": {
                "type": "sentence",
                "content": "content_5785909605f0468f91a469d6ae248950",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_181c20f92c494d64865237569bd26ae7": {
              "id": "node_181c20f92c494d64865237569bd26ae7",
              "data": {
                "type": "sentence",
                "content": "content_44602bad59794e71ab3b3da4e728f867",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fdb774b3f6d940f1b98b071e9856afda": {
              "id": "node_fdb774b3f6d940f1b98b071e9856afda",
              "data": {
                "type": "sentence",
                "content": "content_e7c4c5bb7e0f450b8d8acf22da5b73fd",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_10e777001fc64661a419b190b986836b": {
              "id": "node_10e777001fc64661a419b190b986836b",
              "data": {
                "type": "sentence",
                "content": "content_f779b84b8f724379bf95c83e7181c9a9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_096e2215a0ab4c40bc840c583c865043": {
              "id": "node_096e2215a0ab4c40bc840c583c865043",
              "data": {
                "type": "sentence",
                "content": "content_a1e3f5ff47d648e7ab544cfc4d2079ef",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5fa3b817480a41a092691616ad328832": {
              "id": "node_5fa3b817480a41a092691616ad328832",
              "data": {
                "type": "sentence",
                "content": "content_8d004235754740938e35b33b7137c534",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_95420658961f44b5af620aeacc644489": {
              "id": "node_95420658961f44b5af620aeacc644489",
              "data": {
                "type": "sentence",
                "content": "content_82df08861dea49488f5c546333367cc6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_68b3c4b64f8f49b9816e83f08b38580c": {
              "id": "node_68b3c4b64f8f49b9816e83f08b38580c",
              "data": {
                "type": "sentence",
                "content": "content_1096304b33ba4bedb231471d0b7ac967",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a428b45cd3a044aea6aede72c7f416b8": {
              "id": "node_a428b45cd3a044aea6aede72c7f416b8",
              "data": {
                "type": "sentence",
                "content": "content_45ed23d7298d49f9beef887c344ea70a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1ed9cc8e64a4421c95731f9b381caf74": {
              "id": "node_1ed9cc8e64a4421c95731f9b381caf74",
              "data": {
                "type": "sentence",
                "content": "content_9817a1f50dba4867b45d5674eaf5a056",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3b5066c182cc4284a4d5cac212098d32": {
              "id": "node_3b5066c182cc4284a4d5cac212098d32",
              "data": {
                "type": "sentence",
                "content": "content_e9226eef896f42e7a4f4f16ff74b5196",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3ea755c5d2e04b0ba70ba4c0061e6714": {
              "id": "node_3ea755c5d2e04b0ba70ba4c0061e6714",
              "data": {
                "type": "sentence",
                "content": "content_5e9ea819b0a84242b6ee222a6f0571c4",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e6623a602184422f992ffe1363ce41a9": {
              "id": "node_e6623a602184422f992ffe1363ce41a9",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\n\r\ncontext.character_map[\"joey\"].direction = \"up\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\n\r\ncontext.character_map[\"laisha\"].direction = \"down\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")"
                  }
                }
              }
            },
            "node_aa225b53ca36419e84ddf604a27dccf7": {
              "id": "node_aa225b53ca36419e84ddf604a27dccf7",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"laisha\"].start_animation(\"walk\")\r\ncontext.character_map[\"joey\"].enabled = false\r\ncontext.character_map[\"laisha\"].enabled = false\r\nvar tween = context.root.create_tween()\r\nvar target_pos = Vector2(800,440)\r\n\r\ntween.tween_property(context.character_map[\"laisha\"], \"position\", target_pos, 0.35)\r\nawait tween.finished\r\n\r\nawait context.root.get_tree().create_timer(0.2).timeout\r\n\r\ntween = context.root.create_tween()\r\ntarget_pos = Vector2(800,380)\r\ntween.set_parallel(true)\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].start_animation(\"walk\")\r\ntween.tween_property(context.character_map[\"laisha\"], \"position\", target_pos, 0.5)\r\ntween.tween_property(context.character_map[\"joey\"], \"position\", Vector2(target_pos.x, target_pos.y + 40), 0.5)\r\nawait tween.finished\r\n\r\ntween = context.root.create_tween()\r\ntween.tween_property(context.character_map[\"joey\"], \"position\", Vector2(context.character_map[\"joey\"].position.x + 100, context.character_map[\"joey\"].position.y), 0.5)\r\nawait tween.finished"
                  }
                }
              }
            }
          },
          "links": {
            "node_9eb1a6c1886d4b3bb34420c7456cb8eb-node_1080a833eb634e8fb9a2fcb279ebb264": {
              "sourceId": "node_9eb1a6c1886d4b3bb34420c7456cb8eb",
              "targetId": "node_1080a833eb634e8fb9a2fcb279ebb264",
              "data": {}
            },
            "node_1080a833eb634e8fb9a2fcb279ebb264-node_f966bef101bb4c33a27f5f296d752662": {
              "sourceId": "node_1080a833eb634e8fb9a2fcb279ebb264",
              "targetId": "node_f966bef101bb4c33a27f5f296d752662",
              "data": {}
            },
            "node_65ed8ce92ae34018af77546d451af16d-node_181c20f92c494d64865237569bd26ae7": {
              "sourceId": "node_65ed8ce92ae34018af77546d451af16d",
              "targetId": "node_181c20f92c494d64865237569bd26ae7",
              "data": {}
            },
            "node_181c20f92c494d64865237569bd26ae7-node_fdb774b3f6d940f1b98b071e9856afda": {
              "sourceId": "node_181c20f92c494d64865237569bd26ae7",
              "targetId": "node_fdb774b3f6d940f1b98b071e9856afda",
              "data": {}
            },
            "node_f966bef101bb4c33a27f5f296d752662-node_10e777001fc64661a419b190b986836b": {
              "sourceId": "node_f966bef101bb4c33a27f5f296d752662",
              "targetId": "node_10e777001fc64661a419b190b986836b",
              "data": {}
            },
            "node_fdb774b3f6d940f1b98b071e9856afda-node_096e2215a0ab4c40bc840c583c865043": {
              "sourceId": "node_fdb774b3f6d940f1b98b071e9856afda",
              "targetId": "node_096e2215a0ab4c40bc840c583c865043",
              "data": {}
            },
            "node_096e2215a0ab4c40bc840c583c865043-node_5fa3b817480a41a092691616ad328832": {
              "sourceId": "node_096e2215a0ab4c40bc840c583c865043",
              "targetId": "node_5fa3b817480a41a092691616ad328832",
              "data": {}
            },
            "node_5fa3b817480a41a092691616ad328832-node_95420658961f44b5af620aeacc644489": {
              "sourceId": "node_5fa3b817480a41a092691616ad328832",
              "targetId": "node_95420658961f44b5af620aeacc644489",
              "data": {}
            },
            "node_95420658961f44b5af620aeacc644489-node_68b3c4b64f8f49b9816e83f08b38580c": {
              "sourceId": "node_95420658961f44b5af620aeacc644489",
              "targetId": "node_68b3c4b64f8f49b9816e83f08b38580c",
              "data": {}
            },
            "node_68b3c4b64f8f49b9816e83f08b38580c-node_a428b45cd3a044aea6aede72c7f416b8": {
              "sourceId": "node_68b3c4b64f8f49b9816e83f08b38580c",
              "targetId": "node_a428b45cd3a044aea6aede72c7f416b8",
              "data": {}
            },
            "node_a428b45cd3a044aea6aede72c7f416b8-node_1ed9cc8e64a4421c95731f9b381caf74": {
              "sourceId": "node_a428b45cd3a044aea6aede72c7f416b8",
              "targetId": "node_1ed9cc8e64a4421c95731f9b381caf74",
              "data": {}
            },
            "node_1ed9cc8e64a4421c95731f9b381caf74-node_3b5066c182cc4284a4d5cac212098d32": {
              "sourceId": "node_1ed9cc8e64a4421c95731f9b381caf74",
              "targetId": "node_3b5066c182cc4284a4d5cac212098d32",
              "data": {}
            },
            "node_3b5066c182cc4284a4d5cac212098d32-node_3ea755c5d2e04b0ba70ba4c0061e6714": {
              "sourceId": "node_3b5066c182cc4284a4d5cac212098d32",
              "targetId": "node_3ea755c5d2e04b0ba70ba4c0061e6714",
              "data": {}
            },
            "node_07ae2e584d934276b6bb45b848c0f2f3-node_e6623a602184422f992ffe1363ce41a9": {
              "sourceId": "node_07ae2e584d934276b6bb45b848c0f2f3",
              "targetId": "node_e6623a602184422f992ffe1363ce41a9",
              "data": {}
            },
            "node_e6623a602184422f992ffe1363ce41a9-node_9eb1a6c1886d4b3bb34420c7456cb8eb": {
              "sourceId": "node_e6623a602184422f992ffe1363ce41a9",
              "targetId": "node_9eb1a6c1886d4b3bb34420c7456cb8eb",
              "data": {}
            },
            "node_10e777001fc64661a419b190b986836b-node_aa225b53ca36419e84ddf604a27dccf7": {
              "sourceId": "node_10e777001fc64661a419b190b986836b",
              "targetId": "node_aa225b53ca36419e84ddf604a27dccf7",
              "data": {}
            },
            "node_aa225b53ca36419e84ddf604a27dccf7-node_65ed8ce92ae34018af77546d451af16d": {
              "sourceId": "node_aa225b53ca36419e84ddf604a27dccf7",
              "targetId": "node_65ed8ce92ae34018af77546d451af16d",
              "data": {}
            }
          },
          "name": "storylet10",
          "id": "storylet_6f009b8d304249cb84940b909f4fb67f",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_25bb131257624a1f80b63a6c5edc9e81": {
              "id": "node_25bb131257624a1f80b63a6c5edc9e81",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_laisha_find_joey"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return tracker.cnhs(\"house.events.start_fire\", \"parent_dead\") and not tracker.shs(\"house_snow_field.find_joey.joey_gohome\")"
              }
            },
            "node_8fa3515ec9b844179eb3e0401ab05f0a": {
              "id": "node_8fa3515ec9b844179eb3e0401ab05f0a",
              "data": {
                "type": "sentence",
                "content": "content_0eeb0e4f72d4465ea8edc148af28d45d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_25bb131257624a1f80b63a6c5edc9e81-node_8fa3515ec9b844179eb3e0401ab05f0a": {
              "sourceId": "node_25bb131257624a1f80b63a6c5edc9e81",
              "targetId": "node_8fa3515ec9b844179eb3e0401ab05f0a",
              "data": {}
            }
          },
          "name": "storylet11",
          "id": "storylet_6a4d9fe805d14dfd84df50b97330001b",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_7da88896f4fc476496e4e8da06398b57": {
              "id": "node_7da88896f4fc476496e4e8da06398b57",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "outside_ban_collect_fuel"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_695c43a96aa441feafd5981150740519": {
              "id": "node_695c43a96aa441feafd5981150740519",
              "data": {
                "type": "sentence",
                "content": "content_6246d91093ec41bf86e86d8a78eca309",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_7da88896f4fc476496e4e8da06398b57-node_695c43a96aa441feafd5981150740519": {
              "sourceId": "node_7da88896f4fc476496e4e8da06398b57",
              "targetId": "node_695c43a96aa441feafd5981150740519",
              "data": {}
            }
          },
          "name": "storylet12",
          "id": "storylet_71140d7bc961406da2756cbf62bb61dc",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_d4ccb7a0f14b474ea8c64220248dc0d4": {
              "id": "node_d4ccb7a0f14b474ea8c64220248dc0d4",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_laisha_with_joey1"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "## return tracker.shs(\"house.events.start_fire\") and not tracker.nhs(context.current_process_node.id)\r\nreturn not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_a7bdb67d913d4e30a12ec056b1a3171c": {
              "id": "node_a7bdb67d913d4e30a12ec056b1a3171c",
              "data": {
                "type": "sentence",
                "content": "content_59255cc084b74dc4a8d60dabfc057b7c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "context.character_map[\"laisha\"].face_to(context.character_map[\"joey\"])",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_098f4f85555940ebad8f0e06eef88592": {
              "id": "node_098f4f85555940ebad8f0e06eef88592",
              "data": {
                "type": "sentence",
                "content": "content_f0c22e5070834c60b6aa495119f7d109",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1200cb110e834a029dd66fe757ea35d9": {
              "id": "node_1200cb110e834a029dd66fe757ea35d9",
              "data": {
                "type": "sentence",
                "content": "content_bbccd1b7de3442c79374e71094c6606e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_75482137e2824599b73837be9de4c6ba": {
              "id": "node_75482137e2824599b73837be9de4c6ba",
              "data": {
                "type": "sentence",
                "content": "content_d7054ae6996f42cc8eadd8b66209c226",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": "return tracker.shs(\"house_snow_field.find_joey.joey_gohome\")"
              }
            }
          },
          "links": {
            "node_d4ccb7a0f14b474ea8c64220248dc0d4-node_a7bdb67d913d4e30a12ec056b1a3171c": {
              "sourceId": "node_d4ccb7a0f14b474ea8c64220248dc0d4",
              "targetId": "node_a7bdb67d913d4e30a12ec056b1a3171c",
              "data": {}
            },
            "node_a7bdb67d913d4e30a12ec056b1a3171c-node_098f4f85555940ebad8f0e06eef88592": {
              "sourceId": "node_a7bdb67d913d4e30a12ec056b1a3171c",
              "targetId": "node_098f4f85555940ebad8f0e06eef88592",
              "data": {}
            },
            "node_098f4f85555940ebad8f0e06eef88592-node_75482137e2824599b73837be9de4c6ba": {
              "sourceId": "node_098f4f85555940ebad8f0e06eef88592",
              "targetId": "node_75482137e2824599b73837be9de4c6ba",
              "data": {}
            },
            "node_098f4f85555940ebad8f0e06eef88592-node_1200cb110e834a029dd66fe757ea35d9": {
              "sourceId": "node_098f4f85555940ebad8f0e06eef88592",
              "targetId": "node_1200cb110e834a029dd66fe757ea35d9",
              "data": {}
            }
          },
          "name": "storylet22",
          "id": "fbae56ce5bb54fbfb74880cbe902f4cf",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_e2badb4e6e394bd8bb47c52ff0348e22": {
              "id": "node_e2badb4e6e394bd8bb47c52ff0348e22",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "underground_find_joey"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return tracker.cnhs(\"house.events.start_fire\", \"parent_dead\")"
              }
            },
            "node_3bbf51bc6b5d480191653a1071703e08": {
              "id": "node_3bbf51bc6b5d480191653a1071703e08",
              "data": {
                "type": "sentence",
                "content": "content_123d4d312adf41818cb31334b911597b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_e2badb4e6e394bd8bb47c52ff0348e22-node_3bbf51bc6b5d480191653a1071703e08": {
              "sourceId": "node_e2badb4e6e394bd8bb47c52ff0348e22",
              "targetId": "node_3bbf51bc6b5d480191653a1071703e08",
              "data": {}
            }
          },
          "name": "storylet23",
          "id": "fa7237e8cbbe4439825eca5e8d06bccc",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_d6c2b7d7d918424c8dcbfc2449602af6": {
              "id": "node_d6c2b7d7d918424c8dcbfc2449602af6",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "underground_normal"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_45f4c43dc7934c249cc08991e549001b": {
              "id": "node_45f4c43dc7934c249cc08991e549001b",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "SceneChanger.change_scene(Constants.SCENES.HOUSE_UNDERGROUND)"
                  }
                }
              }
            }
          },
          "links": {
            "node_d6c2b7d7d918424c8dcbfc2449602af6-node_45f4c43dc7934c249cc08991e549001b": {
              "sourceId": "node_d6c2b7d7d918424c8dcbfc2449602af6",
              "targetId": "node_45f4c43dc7934c249cc08991e549001b",
              "data": {}
            }
          },
          "name": "storylet24",
          "id": "2498bb09dbe44ba49976b66cc4707246",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_d7c98f3c333749c48d65fc244feb3826": {
              "id": "node_d7c98f3c333749c48d65fc244feb3826",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "outside_ban_find_food"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_bca503df83f344db95e029b8b20d62b5": {
              "id": "node_bca503df83f344db95e029b8b20d62b5",
              "data": {
                "type": "sentence",
                "content": "content_9da500c495bf4a8bb4dbf66c26d069e6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_d7c98f3c333749c48d65fc244feb3826-node_bca503df83f344db95e029b8b20d62b5": {
              "sourceId": "node_d7c98f3c333749c48d65fc244feb3826",
              "targetId": "node_bca503df83f344db95e029b8b20d62b5",
              "data": {}
            }
          },
          "name": "storylet25",
          "id": "2bd93ceb95f2414f85020f2ffd3491a4",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_8ea71ec40a8f43fcbe5043eb314dc80b": {
              "id": "node_8ea71ec40a8f43fcbe5043eb314dc80b",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "talk_laisha_find_food"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": ""
              }
            },
            "node_304a96544b6a4e8fa579de97ec92fb26": {
              "id": "node_304a96544b6a4e8fa579de97ec92fb26",
              "data": {
                "type": "sentence",
                "content": "content_870d534fa50d45eab3bbad5fcc1916bf",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "context.character_map[\"laisha\"].face_to(context.character_map[\"sheng_qi\"])",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            }
          },
          "links": {
            "node_8ea71ec40a8f43fcbe5043eb314dc80b-node_304a96544b6a4e8fa579de97ec92fb26": {
              "sourceId": "node_8ea71ec40a8f43fcbe5043eb314dc80b",
              "targetId": "node_304a96544b6a4e8fa579de97ec92fb26",
              "data": {}
            }
          },
          "name": "storylet26",
          "id": "bbed7fbf0ff94a579ce369b4e43ccf6d",
          "conditions": []
        }
      },
      {
        "groupId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
        "data": {
          "nodes": {
            "node_801d1ea8529d4fb4863e3d8660ccf7fa": {
              "id": "node_801d1ea8529d4fb4863e3d8660ccf7fa",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "fuel_num"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_10e5f760657a4815b71c736c3a5a0489": {
              "id": "node_10e5f760657a4815b71c736c3a5a0489",
              "data": {
                "type": "sentence",
                "content": "content_eceea1d9e1dc4ef8a0483ec64e3e81c2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_801d1ea8529d4fb4863e3d8660ccf7fa-node_10e5f760657a4815b71c736c3a5a0489": {
              "sourceId": "node_801d1ea8529d4fb4863e3d8660ccf7fa",
              "targetId": "node_10e5f760657a4815b71c736c3a5a0489",
              "data": {}
            }
          },
          "name": "storylet28",
          "id": "2673025522624a81a3c3396df3d022c5",
          "conditions": []
        }
      },
      {
        "groupId": "group_b4be19761430439a902755fdfafded45",
        "data": {
          "nodes": {
            "node_d8120309f6a2462ea219218fb224bdfd": {
              "id": "node_d8120309f6a2462ea219218fb224bdfd",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "items"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_c85832871c124fbe85c2bbe88f68a965": {
              "id": "node_c85832871c124fbe85c2bbe88f68a965",
              "data": {
                "type": "sentence",
                "content": "content_32c874db8f6d45d4b9f63db0fdfbf275",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b9d7820753384c3bbce62db27fa607b9": {
              "id": "node_b9d7820753384c3bbce62db27fa607b9",
              "data": {
                "type": "sentence",
                "content": "content_3e851cc1ece0426693154b5013734296",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7d22a1b46d52464f855c40594a658a31": {
              "id": "node_7d22a1b46d52464f855c40594a658a31",
              "data": {
                "type": "sentence",
                "content": "content_e43f31bfa70e42e981b0692a599b6ce4",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c92d291a369d4812b1584646d06600a5": {
              "id": "node_c92d291a369d4812b1584646d06600a5",
              "data": {
                "type": "sentence",
                "content": "content_d1a936f1f37e4610ad9ac7a813c0a8ad",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_d8120309f6a2462ea219218fb224bdfd-node_c85832871c124fbe85c2bbe88f68a965": {
              "sourceId": "node_d8120309f6a2462ea219218fb224bdfd",
              "targetId": "node_c85832871c124fbe85c2bbe88f68a965",
              "data": {}
            },
            "node_c85832871c124fbe85c2bbe88f68a965-node_b9d7820753384c3bbce62db27fa607b9": {
              "sourceId": "node_c85832871c124fbe85c2bbe88f68a965",
              "targetId": "node_b9d7820753384c3bbce62db27fa607b9",
              "data": {}
            },
            "node_b9d7820753384c3bbce62db27fa607b9-node_7d22a1b46d52464f855c40594a658a31": {
              "sourceId": "node_b9d7820753384c3bbce62db27fa607b9",
              "targetId": "node_7d22a1b46d52464f855c40594a658a31",
              "data": {}
            },
            "node_7d22a1b46d52464f855c40594a658a31-node_c92d291a369d4812b1584646d06600a5": {
              "sourceId": "node_7d22a1b46d52464f855c40594a658a31",
              "targetId": "node_c92d291a369d4812b1584646d06600a5",
              "data": {}
            }
          },
          "name": "storylet1",
          "id": "storylet_2541911a5b4a4147a74586dce72b432c",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_31607fbdbfb442bbbe8cbfce390319ab": {
              "id": "node_31607fbdbfb442bbbe8cbfce390319ab",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "first_dinner"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_c29792841f2349bf9e3581aeb94fcc2d": {
              "id": "node_c29792841f2349bf9e3581aeb94fcc2d",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].start_animation(\"idle\")\r\ncontext.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].start_animation(\"idle\")\r\n"
                  }
                }
              }
            },
            "node_9918348860b14aac87a6cb6348bd5b85": {
              "id": "node_9918348860b14aac87a6cb6348bd5b85",
              "data": {
                "type": "sentence",
                "content": "content_f9be221deae0409fb2c0985715bdc795",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c59ead4fa0ff43938eab896fe241b8fa": {
              "id": "node_c59ead4fa0ff43938eab896fe241b8fa",
              "data": {
                "type": "sentence",
                "content": "content_af8bf2855a164a20ade1b502fbf72c1f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_61e376254e1b4898b9d8febe6d7bde99": {
              "id": "node_61e376254e1b4898b9d8febe6d7bde99",
              "data": {
                "type": "sentence",
                "content": "content_152aa75bea4e40d78ac91482e6e608da",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_353fba5df2164ea59bca2881ffff3b78": {
              "id": "node_353fba5df2164ea59bca2881ffff3b78",
              "data": {
                "type": "sentence",
                "content": "content_53ba55c989d540bfab550f88b381c769",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7f7145ee32ed4114bea3cd96e1bd2339": {
              "id": "node_7f7145ee32ed4114bea3cd96e1bd2339",
              "data": {
                "type": "sentence",
                "content": "content_782a9afc1ac84c7883d40a081a5afa8b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b09cc94954e544bf8fd6467d3c27ea17": {
              "id": "node_b09cc94954e544bf8fd6467d3c27ea17",
              "data": {
                "type": "sentence",
                "content": "content_dbc38e6fccc34baa9b0861aa59131b3c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_20ab16417ad547be94b8fb6a53073316": {
              "id": "node_20ab16417ad547be94b8fb6a53073316",
              "data": {
                "type": "sentence",
                "content": "content_f8e9a430ba4c45138ced2f1ba05b6312",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_52169310bc4843ddb7b27b4fa9afd2f7": {
              "id": "node_52169310bc4843ddb7b27b4fa9afd2f7",
              "data": {
                "type": "branch",
                "content": "content_6d6bf9cd292a4e5797852c4456368893",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b2057f9369054527a514527f20262f3d": {
              "id": "node_b2057f9369054527a514527f20262f3d",
              "data": {
                "type": "sentence",
                "content": "content_8338074ef36e4578a42613406a3af1d2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ba039cf724a14903ab042a530787d03a": {
              "id": "node_ba039cf724a14903ab042a530787d03a",
              "data": {
                "type": "sentence",
                "content": "content_b92d7a6c43bd46ecb0eb692db17c6712",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "afterJumpProcess": ""
              }
            },
            "node_db1f35ed62414a62baafb5f3982d1ddf": {
              "id": "node_db1f35ed62414a62baafb5f3982d1ddf",
              "data": {
                "type": "sentence",
                "content": "content_3e14bf6d661b4b009b8dde109aaae430",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "angry"
              }
            },
            "node_e0e3792d20d4404a8564c2973dc1291b": {
              "id": "node_e0e3792d20d4404a8564c2973dc1291b",
              "data": {
                "type": "sentence",
                "content": "content_0c0ab778393e45ab9901d7abfbc7aa1f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_46b632ad90e14164975b01d6f51f613c": {
              "id": "node_46b632ad90e14164975b01d6f51f613c",
              "data": {
                "type": "sentence",
                "content": "content_dbf82eee91d3428b87ee5f44c231d432",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a12a7e8dc4754ef798a78855e29ad75c": {
              "id": "node_a12a7e8dc4754ef798a78855e29ad75c",
              "data": {
                "type": "sentence",
                "content": "content_3c2594848d064cd7a9f7f2803eecfa49",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "waste_food"
              }
            },
            "node_2f5c784712364d1ebef15de28602e5be": {
              "id": "node_2f5c784712364d1ebef15de28602e5be",
              "data": {
                "type": "sentence",
                "content": "content_63c4a35b9fb54e62a16c0550da75f0d6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": ""
              }
            },
            "node_d58b0699694e4f50a3961919caa564e4": {
              "id": "node_d58b0699694e4f50a3961919caa564e4",
              "data": {
                "type": "sentence",
                "content": "content_5e8742d4bcb94f639a1caea52de105b7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_4f420f4d0658462cbf695ed857832532": {
              "id": "node_4f420f4d0658462cbf695ed857832532",
              "data": {
                "type": "sentence",
                "content": "content_d91185c7c6de4a98bc182bf1cfd6052d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bbb46c0f3a644462b3830ebb520e99ba": {
              "id": "node_bbb46c0f3a644462b3830ebb520e99ba",
              "data": {
                "type": "sentence",
                "content": "content_18820da0931f42318304b6e96685ee59",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a966b3fb2aa1411c978ed37180a85204": {
              "id": "node_a966b3fb2aa1411c978ed37180a85204",
              "data": {
                "type": "sentence",
                "content": "content_de13dd658c64456497dda941b154c131",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_76b9d372f2804cadae81643f2415e578": {
              "id": "node_76b9d372f2804cadae81643f2415e578",
              "data": {
                "type": "sentence",
                "content": "content_f5bd5c4517194d9cb3a15bce342418b5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c3cb88f4dc1543cea664fb6225ae536c": {
              "id": "node_c3cb88f4dc1543cea664fb6225ae536c",
              "data": {
                "type": "sentence",
                "content": "content_562dc06d5bfc4826a0ab9b45e4937d7d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8e3368c46a4f43c8bd0235509f7897e5": {
              "id": "node_8e3368c46a4f43c8bd0235509f7897e5",
              "data": {
                "type": "sentence",
                "content": "content_0c2ea0fa2aad46dbb9ee4be2b85f7c80",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_11a2e924227547938d4240dee9a61516": {
              "id": "node_11a2e924227547938d4240dee9a61516",
              "data": {
                "type": "sentence",
                "content": "content_d28dd75d02324cc69fc08e6f00a9d492",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_be6d7f0e5e304877a24a77793e70a8dc": {
              "id": "node_be6d7f0e5e304877a24a77793e70a8dc",
              "data": {
                "type": "sentence",
                "content": "content_afedff50345b4964a13ab1c544e2e0ac",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "afterJumpProcess": ""
              }
            },
            "node_ab02c6fb76cf46e5aa9bc12328119657": {
              "id": "node_ab02c6fb76cf46e5aa9bc12328119657",
              "data": {
                "type": "sentence",
                "content": "content_e00045115e1147ab8b343130c5371d64",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1326ef4a39524fe4bac22d6e9da875bf": {
              "id": "node_1326ef4a39524fe4bac22d6e9da875bf",
              "data": {
                "type": "sentence",
                "content": "content_42b06b3af1ff476181fa21c8b63bae28",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bacbb05af6664dcfab2a577459b4db2c": {
              "id": "node_bacbb05af6664dcfab2a577459b4db2c",
              "data": {
                "type": "sentence",
                "content": "content_2a2178b663c54829b464e65c8d2725f7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a2530b368d6f4846a75b7d70b1b6ae4a": {
              "id": "node_a2530b368d6f4846a75b7d70b1b6ae4a",
              "data": {
                "type": "sentence",
                "content": "content_8b7f6e21a2e74fed9a2aa3f30f8bec49",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5143e93aaece4f398a4c27292632bae6": {
              "id": "node_5143e93aaece4f398a4c27292632bae6",
              "data": {
                "type": "sentence",
                "content": "content_323f6bfd90404cf8a84bd0a7682c811c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8ed87f93752e495ba5f254bbefc8d0bc": {
              "id": "node_8ed87f93752e495ba5f254bbefc8d0bc",
              "data": {
                "type": "sentence",
                "content": "content_e8be6f53b82c4bc7a7f2b5e832cfb54b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5d65afc7c89d4d6dada3c786a1c84a4a": {
              "id": "node_5d65afc7c89d4d6dada3c786a1c84a4a",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "direct",
                  "target_node_id": "waste_food"
                }
              }
            }
          },
          "links": {
            "node_31607fbdbfb442bbbe8cbfce390319ab-node_c29792841f2349bf9e3581aeb94fcc2d": {
              "sourceId": "node_31607fbdbfb442bbbe8cbfce390319ab",
              "targetId": "node_c29792841f2349bf9e3581aeb94fcc2d",
              "data": {}
            },
            "node_c29792841f2349bf9e3581aeb94fcc2d-node_9918348860b14aac87a6cb6348bd5b85": {
              "sourceId": "node_c29792841f2349bf9e3581aeb94fcc2d",
              "targetId": "node_9918348860b14aac87a6cb6348bd5b85",
              "data": {}
            },
            "node_9918348860b14aac87a6cb6348bd5b85-node_c59ead4fa0ff43938eab896fe241b8fa": {
              "sourceId": "node_9918348860b14aac87a6cb6348bd5b85",
              "targetId": "node_c59ead4fa0ff43938eab896fe241b8fa",
              "data": {}
            },
            "node_c59ead4fa0ff43938eab896fe241b8fa-node_61e376254e1b4898b9d8febe6d7bde99": {
              "sourceId": "node_c59ead4fa0ff43938eab896fe241b8fa",
              "targetId": "node_61e376254e1b4898b9d8febe6d7bde99",
              "data": {}
            },
            "node_61e376254e1b4898b9d8febe6d7bde99-node_353fba5df2164ea59bca2881ffff3b78": {
              "sourceId": "node_61e376254e1b4898b9d8febe6d7bde99",
              "targetId": "node_353fba5df2164ea59bca2881ffff3b78",
              "data": {}
            },
            "node_353fba5df2164ea59bca2881ffff3b78-node_7f7145ee32ed4114bea3cd96e1bd2339": {
              "sourceId": "node_353fba5df2164ea59bca2881ffff3b78",
              "targetId": "node_7f7145ee32ed4114bea3cd96e1bd2339",
              "data": {}
            },
            "node_7f7145ee32ed4114bea3cd96e1bd2339-node_b09cc94954e544bf8fd6467d3c27ea17": {
              "sourceId": "node_7f7145ee32ed4114bea3cd96e1bd2339",
              "targetId": "node_b09cc94954e544bf8fd6467d3c27ea17",
              "data": {}
            },
            "node_b09cc94954e544bf8fd6467d3c27ea17-node_20ab16417ad547be94b8fb6a53073316": {
              "sourceId": "node_b09cc94954e544bf8fd6467d3c27ea17",
              "targetId": "node_20ab16417ad547be94b8fb6a53073316",
              "data": {}
            },
            "node_20ab16417ad547be94b8fb6a53073316-node_52169310bc4843ddb7b27b4fa9afd2f7": {
              "sourceId": "node_20ab16417ad547be94b8fb6a53073316",
              "targetId": "node_52169310bc4843ddb7b27b4fa9afd2f7",
              "data": {}
            },
            "node_52169310bc4843ddb7b27b4fa9afd2f7-node_b2057f9369054527a514527f20262f3d": {
              "sourceId": "node_52169310bc4843ddb7b27b4fa9afd2f7",
              "targetId": "node_b2057f9369054527a514527f20262f3d",
              "data": {
                "optionName": "option_d88411bb93b54492be8f799ce029b9b6",
                "optionId": ""
              }
            },
            "node_52169310bc4843ddb7b27b4fa9afd2f7-node_ba039cf724a14903ab042a530787d03a": {
              "sourceId": "node_52169310bc4843ddb7b27b4fa9afd2f7",
              "targetId": "node_ba039cf724a14903ab042a530787d03a",
              "data": {
                "optionName": "option_8add11917acc4caab160c2b467e07551",
                "optionId": ""
              }
            },
            "node_52169310bc4843ddb7b27b4fa9afd2f7-node_db1f35ed62414a62baafb5f3982d1ddf": {
              "sourceId": "node_52169310bc4843ddb7b27b4fa9afd2f7",
              "targetId": "node_db1f35ed62414a62baafb5f3982d1ddf",
              "data": {
                "optionName": "option_b18ce08197dc4fe1af710dc225aef08b",
                "optionId": ""
              }
            },
            "node_db1f35ed62414a62baafb5f3982d1ddf-node_e0e3792d20d4404a8564c2973dc1291b": {
              "sourceId": "node_db1f35ed62414a62baafb5f3982d1ddf",
              "targetId": "node_e0e3792d20d4404a8564c2973dc1291b",
              "data": {}
            },
            "node_e0e3792d20d4404a8564c2973dc1291b-node_46b632ad90e14164975b01d6f51f613c": {
              "sourceId": "node_e0e3792d20d4404a8564c2973dc1291b",
              "targetId": "node_46b632ad90e14164975b01d6f51f613c",
              "data": {}
            },
            "node_46b632ad90e14164975b01d6f51f613c-node_a12a7e8dc4754ef798a78855e29ad75c": {
              "sourceId": "node_46b632ad90e14164975b01d6f51f613c",
              "targetId": "node_a12a7e8dc4754ef798a78855e29ad75c",
              "data": {}
            },
            "node_a12a7e8dc4754ef798a78855e29ad75c-node_2f5c784712364d1ebef15de28602e5be": {
              "sourceId": "node_a12a7e8dc4754ef798a78855e29ad75c",
              "targetId": "node_2f5c784712364d1ebef15de28602e5be",
              "data": {}
            },
            "node_2f5c784712364d1ebef15de28602e5be-node_d58b0699694e4f50a3961919caa564e4": {
              "sourceId": "node_2f5c784712364d1ebef15de28602e5be",
              "targetId": "node_d58b0699694e4f50a3961919caa564e4",
              "data": {}
            },
            "node_d58b0699694e4f50a3961919caa564e4-node_4f420f4d0658462cbf695ed857832532": {
              "sourceId": "node_d58b0699694e4f50a3961919caa564e4",
              "targetId": "node_4f420f4d0658462cbf695ed857832532",
              "data": {}
            },
            "node_4f420f4d0658462cbf695ed857832532-node_bbb46c0f3a644462b3830ebb520e99ba": {
              "sourceId": "node_4f420f4d0658462cbf695ed857832532",
              "targetId": "node_bbb46c0f3a644462b3830ebb520e99ba",
              "data": {}
            },
            "node_bbb46c0f3a644462b3830ebb520e99ba-node_a966b3fb2aa1411c978ed37180a85204": {
              "sourceId": "node_bbb46c0f3a644462b3830ebb520e99ba",
              "targetId": "node_a966b3fb2aa1411c978ed37180a85204",
              "data": {}
            },
            "node_a966b3fb2aa1411c978ed37180a85204-node_76b9d372f2804cadae81643f2415e578": {
              "sourceId": "node_a966b3fb2aa1411c978ed37180a85204",
              "targetId": "node_76b9d372f2804cadae81643f2415e578",
              "data": {}
            },
            "node_76b9d372f2804cadae81643f2415e578-node_c3cb88f4dc1543cea664fb6225ae536c": {
              "sourceId": "node_76b9d372f2804cadae81643f2415e578",
              "targetId": "node_c3cb88f4dc1543cea664fb6225ae536c",
              "data": {}
            },
            "node_c3cb88f4dc1543cea664fb6225ae536c-node_8e3368c46a4f43c8bd0235509f7897e5": {
              "sourceId": "node_c3cb88f4dc1543cea664fb6225ae536c",
              "targetId": "node_8e3368c46a4f43c8bd0235509f7897e5",
              "data": {}
            },
            "node_8e3368c46a4f43c8bd0235509f7897e5-node_11a2e924227547938d4240dee9a61516": {
              "sourceId": "node_8e3368c46a4f43c8bd0235509f7897e5",
              "targetId": "node_11a2e924227547938d4240dee9a61516",
              "data": {}
            },
            "node_ba039cf724a14903ab042a530787d03a-node_be6d7f0e5e304877a24a77793e70a8dc": {
              "sourceId": "node_ba039cf724a14903ab042a530787d03a",
              "targetId": "node_be6d7f0e5e304877a24a77793e70a8dc",
              "data": {}
            },
            "node_be6d7f0e5e304877a24a77793e70a8dc-node_ab02c6fb76cf46e5aa9bc12328119657": {
              "sourceId": "node_be6d7f0e5e304877a24a77793e70a8dc",
              "targetId": "node_ab02c6fb76cf46e5aa9bc12328119657",
              "data": {}
            },
            "node_b2057f9369054527a514527f20262f3d-node_1326ef4a39524fe4bac22d6e9da875bf": {
              "sourceId": "node_b2057f9369054527a514527f20262f3d",
              "targetId": "node_1326ef4a39524fe4bac22d6e9da875bf",
              "data": {}
            },
            "node_1326ef4a39524fe4bac22d6e9da875bf-node_bacbb05af6664dcfab2a577459b4db2c": {
              "sourceId": "node_1326ef4a39524fe4bac22d6e9da875bf",
              "targetId": "node_bacbb05af6664dcfab2a577459b4db2c",
              "data": {}
            },
            "node_bacbb05af6664dcfab2a577459b4db2c-node_a2530b368d6f4846a75b7d70b1b6ae4a": {
              "sourceId": "node_bacbb05af6664dcfab2a577459b4db2c",
              "targetId": "node_a2530b368d6f4846a75b7d70b1b6ae4a",
              "data": {}
            },
            "node_a2530b368d6f4846a75b7d70b1b6ae4a-node_5143e93aaece4f398a4c27292632bae6": {
              "sourceId": "node_a2530b368d6f4846a75b7d70b1b6ae4a",
              "targetId": "node_5143e93aaece4f398a4c27292632bae6",
              "data": {}
            },
            "node_5143e93aaece4f398a4c27292632bae6-node_8ed87f93752e495ba5f254bbefc8d0bc": {
              "sourceId": "node_5143e93aaece4f398a4c27292632bae6",
              "targetId": "node_8ed87f93752e495ba5f254bbefc8d0bc",
              "data": {}
            },
            "node_ab02c6fb76cf46e5aa9bc12328119657-node_5d65afc7c89d4d6dada3c786a1c84a4a": {
              "sourceId": "node_ab02c6fb76cf46e5aa9bc12328119657",
              "targetId": "node_5d65afc7c89d4d6dada3c786a1c84a4a",
              "data": {}
            }
          },
          "name": "storylet29",
          "id": "d53e651051a642eead6c8937a7ec9cd1",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_c33fddb61d0048b4ae13034f8a8aff57": {
              "id": "node_c33fddb61d0048b4ae13034f8a8aff57",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "first_talk_situation"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_3415f4bffbc441e0a6668e7a461afda2": {
              "id": "node_3415f4bffbc441e0a6668e7a461afda2",
              "data": {
                "type": "sentence",
                "content": "content_5988888d55024dc39e76facf8315d5b3",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "enableCheck": ""
              }
            },
            "node_47fdd283865d4a96968f68693e5c17c5": {
              "id": "node_47fdd283865d4a96968f68693e5c17c5",
              "data": {
                "type": "sentence",
                "content": "content_5afd98dbf8d94daa98a86f895f295f14",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_059f4688b2134cbd9c7911046316e90d": {
              "id": "node_059f4688b2134cbd9c7911046316e90d",
              "data": {
                "type": "sentence",
                "content": "content_20911fc0149d4fa6ba1cf88ae93e63da",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e75606963dd140e093a2a8a9e6b125c6": {
              "id": "node_e75606963dd140e093a2a8a9e6b125c6",
              "data": {
                "type": "sentence",
                "content": "content_3362cbdab1a74c94994d728203052c80",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a5f33d041089420b83599736e8181cfc": {
              "id": "node_a5f33d041089420b83599736e8181cfc",
              "data": {
                "type": "sentence",
                "content": "content_be089cc749d04fa4a831f11418328081",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7472fd1fee994f6990fe47e71c8616b5": {
              "id": "node_7472fd1fee994f6990fe47e71c8616b5",
              "data": {
                "type": "sentence",
                "content": "content_0e5446d0c8794249a0d35e3700167a04",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d1007c82f3cd46ad8f13148316c92d84": {
              "id": "node_d1007c82f3cd46ad8f13148316c92d84",
              "data": {
                "type": "sentence",
                "content": "content_3e32ab5ee05640e8a548576ff93790d3",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f3d73040c1164c52abf716f34efe3994": {
              "id": "node_f3d73040c1164c52abf716f34efe3994",
              "data": {
                "type": "sentence",
                "content": "content_0d91a510ebfc4f23b2652e43d3a4f6c1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2a0e217c677a4c55977f290bcea23895": {
              "id": "node_2a0e217c677a4c55977f290bcea23895",
              "data": {
                "type": "branch",
                "content": "content_cce05b982b1a4e32b731e1457e16d587",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "choice"
              }
            },
            "node_be3daebef10644f3927530a8e84ce4b6": {
              "id": "node_be3daebef10644f3927530a8e84ce4b6",
              "data": {
                "type": "sentence",
                "content": "content_85de243cee2a4dd19378c12cb4f54bdf",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b2fbcb3e79c3455b9201eefa4ab410ac": {
              "id": "node_b2fbcb3e79c3455b9201eefa4ab410ac",
              "data": {
                "type": "sentence",
                "content": "content_116d01bb21dd404eb47a1223b4fff920",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_eaacda7fb0f7437da9943a0aa2c5cd24": {
              "id": "node_eaacda7fb0f7437da9943a0aa2c5cd24",
              "data": {
                "type": "sentence",
                "content": "content_730ca804375e4cda8f635a21ad52c3c6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5972197542c6439bb307683786621434": {
              "id": "node_5972197542c6439bb307683786621434",
              "data": {
                "type": "sentence",
                "content": "content_b4144e5f6cf54c54967d9b832e88cd88",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_68b072fe2ed946bab39c88e3f2702c7f": {
              "id": "node_68b072fe2ed946bab39c88e3f2702c7f",
              "data": {
                "type": "sentence",
                "content": "content_5948f357f5434339a9218bc7c17b2d98",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_20bc8bcf04a64e9984a67218e7951d18": {
              "id": "node_20bc8bcf04a64e9984a67218e7951d18",
              "data": {
                "type": "sentence",
                "content": "content_2bfa8e4212354190846d8bda1d87de26",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_af5db9b9c44f46449ef01b1116ec0a2e": {
              "id": "node_af5db9b9c44f46449ef01b1116ec0a2e",
              "data": {
                "type": "sentence",
                "content": "content_9d1d51894be340a687407dc826bef25b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a5bfca7c0bec4208b70693d85a753483": {
              "id": "node_a5bfca7c0bec4208b70693d85a753483",
              "data": {
                "type": "sentence",
                "content": "content_9bcacd1db87d4f5d82f11bab51b81728",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0e5d92709e3d4f3db9f6fb0845ad0d5e": {
              "id": "node_0e5d92709e3d4f3db9f6fb0845ad0d5e",
              "data": {
                "type": "sentence",
                "content": "content_6456aabf179e49498ba366814c8caf95",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a48aeff4a74c4be6a36598242760ad9c": {
              "id": "node_a48aeff4a74c4be6a36598242760ad9c",
              "data": {
                "type": "sentence",
                "content": "content_5580889766404c099285e5335d97b3cf",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_534e56ffa6594d40a87cbd98f14e47ff": {
              "id": "node_534e56ffa6594d40a87cbd98f14e47ff",
              "data": {
                "type": "sentence",
                "content": "content_4e485f52b77a4ab5bdb2e7bdf7ab0444",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9b72284044cf4284898d3bf77bbc999e": {
              "id": "node_9b72284044cf4284898d3bf77bbc999e",
              "data": {
                "type": "sentence",
                "content": "content_f7828020bccd4420ba90c6dbcb292d42",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d15d766a741c4aecb49128f059895c49": {
              "id": "node_d15d766a741c4aecb49128f059895c49",
              "data": {
                "type": "sentence",
                "content": "content_3f29b2af41104bdc8ffce0a7ac3ff937",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ad42fd7ea07f4eec95dd485b0551ec09": {
              "id": "node_ad42fd7ea07f4eec95dd485b0551ec09",
              "data": {
                "type": "sentence",
                "content": "content_7a77d05e9b014d9592c515cf474bfa36",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f0beccd23cd0433d99087b3d3b648fc9": {
              "id": "node_f0beccd23cd0433d99087b3d3b648fc9",
              "data": {
                "type": "sentence",
                "content": "content_0cf5e595b464410391e91735a28f96fd",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3258159d88054607bb3d4c9a09baf647": {
              "id": "node_3258159d88054607bb3d4c9a09baf647",
              "data": {
                "type": "sentence",
                "content": "content_0e53bd56e17e42519be8854d80459484",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7f4262e595b046a4a4af1ed4f67533ea": {
              "id": "node_7f4262e595b046a4a4af1ed4f67533ea",
              "data": {
                "type": "sentence",
                "content": "content_2c07b7f0a5e140e29e1ab9dc870015b8",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b4d7f820dac04e2ea941e73bbad44ab2": {
              "id": "node_b4d7f820dac04e2ea941e73bbad44ab2",
              "data": {
                "type": "sentence",
                "content": "content_08e5ca0b644f409ca1d6c0986f77eef1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7889ba0f821a42a09dbae48f26040e16": {
              "id": "node_7889ba0f821a42a09dbae48f26040e16",
              "data": {
                "type": "sentence",
                "content": "content_5c00097f9c1f45e5aa682649f174135d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5f2db6d7747f4494bec1c6dca3d334b6": {
              "id": "node_5f2db6d7747f4494bec1c6dca3d334b6",
              "data": {
                "type": "sentence",
                "content": "content_bf5a55b612e047c99ebfb4762b325504",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2396f8e0183a452684413e82bfd0112c": {
              "id": "node_2396f8e0183a452684413e82bfd0112c",
              "data": {
                "type": "sentence",
                "content": "content_c2b56e0777ac4cac8af33fbc6f0b1d55",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_98dcbcae8a584c87bcd4158922644e06": {
              "id": "node_98dcbcae8a584c87bcd4158922644e06",
              "data": {
                "type": "sentence",
                "content": "content_1d6615cb90a9463fa9b9a92712219457",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5d10f4b2b2454b7b8183c75fa1b879b6": {
              "id": "node_5d10f4b2b2454b7b8183c75fa1b879b6",
              "data": {
                "type": "sentence",
                "content": "content_0b7035e1735c40908ce313bd4bba7179",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_13db26d06887451aad24ac8e1dc20c15": {
              "id": "node_13db26d06887451aad24ac8e1dc20c15",
              "data": {
                "type": "sentence",
                "content": "content_6a74b1f1abdf41e6a71d4b4a03991590",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_78c3f995be6745c9b06bb5940d44571c": {
              "id": "node_78c3f995be6745c9b06bb5940d44571c",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "code",
                  "get_target_node_id": {
                    "fields": [],
                    "value": "if tracker.cnst(\"house.events.first_talk_situation\", \"choice\") < 2:\r\n    return \"choice\"\r\nreturn \"end_talk\""
                  }
                }
              }
            },
            "node_cc6c067b398a44eb92f40b79f336ef8b": {
              "id": "node_cc6c067b398a44eb92f40b79f336ef8b",
              "data": {
                "type": "sentence",
                "content": "content_0fc0afe8c3fb41e6a0cbb36e3193ce34",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_972d9e2198c34028a58b83c514a329fe": {
              "id": "node_972d9e2198c34028a58b83c514a329fe",
              "data": {
                "type": "sentence",
                "content": "content_431ac007d8de4433941a84afc6aaf471",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_996e1176157348fcb38a982b19dfb524": {
              "id": "node_996e1176157348fcb38a982b19dfb524",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "code",
                  "get_target_node_id": {
                    "fields": [],
                    "value": "if tracker.cnst(\"house.events.first_talk_situation\", \"choice\") < 2:\r\n    return \"choice\"\r\nreturn \"end_talk\""
                  }
                }
              }
            },
            "node_4e2946d789014978bd62afb8950ffbbd": {
              "id": "node_4e2946d789014978bd62afb8950ffbbd",
              "data": {
                "type": "sentence",
                "content": "content_88886f0dfec54eb68115986f5311c8df",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "end_talk"
              }
            }
          },
          "links": {
            "node_c33fddb61d0048b4ae13034f8a8aff57-node_3415f4bffbc441e0a6668e7a461afda2": {
              "sourceId": "node_c33fddb61d0048b4ae13034f8a8aff57",
              "targetId": "node_3415f4bffbc441e0a6668e7a461afda2",
              "data": {}
            },
            "node_3415f4bffbc441e0a6668e7a461afda2-node_47fdd283865d4a96968f68693e5c17c5": {
              "sourceId": "node_3415f4bffbc441e0a6668e7a461afda2",
              "targetId": "node_47fdd283865d4a96968f68693e5c17c5",
              "data": {}
            },
            "node_47fdd283865d4a96968f68693e5c17c5-node_059f4688b2134cbd9c7911046316e90d": {
              "sourceId": "node_47fdd283865d4a96968f68693e5c17c5",
              "targetId": "node_059f4688b2134cbd9c7911046316e90d",
              "data": {}
            },
            "node_059f4688b2134cbd9c7911046316e90d-node_e75606963dd140e093a2a8a9e6b125c6": {
              "sourceId": "node_059f4688b2134cbd9c7911046316e90d",
              "targetId": "node_e75606963dd140e093a2a8a9e6b125c6",
              "data": {}
            },
            "node_e75606963dd140e093a2a8a9e6b125c6-node_a5f33d041089420b83599736e8181cfc": {
              "sourceId": "node_e75606963dd140e093a2a8a9e6b125c6",
              "targetId": "node_a5f33d041089420b83599736e8181cfc",
              "data": {}
            },
            "node_a5f33d041089420b83599736e8181cfc-node_7472fd1fee994f6990fe47e71c8616b5": {
              "sourceId": "node_a5f33d041089420b83599736e8181cfc",
              "targetId": "node_7472fd1fee994f6990fe47e71c8616b5",
              "data": {}
            },
            "node_7472fd1fee994f6990fe47e71c8616b5-node_d1007c82f3cd46ad8f13148316c92d84": {
              "sourceId": "node_7472fd1fee994f6990fe47e71c8616b5",
              "targetId": "node_d1007c82f3cd46ad8f13148316c92d84",
              "data": {}
            },
            "node_d1007c82f3cd46ad8f13148316c92d84-node_f3d73040c1164c52abf716f34efe3994": {
              "sourceId": "node_d1007c82f3cd46ad8f13148316c92d84",
              "targetId": "node_f3d73040c1164c52abf716f34efe3994",
              "data": {}
            },
            "node_f3d73040c1164c52abf716f34efe3994-node_2a0e217c677a4c55977f290bcea23895": {
              "sourceId": "node_f3d73040c1164c52abf716f34efe3994",
              "targetId": "node_2a0e217c677a4c55977f290bcea23895",
              "data": {}
            },
            "node_2a0e217c677a4c55977f290bcea23895-node_be3daebef10644f3927530a8e84ce4b6": {
              "sourceId": "node_2a0e217c677a4c55977f290bcea23895",
              "targetId": "node_be3daebef10644f3927530a8e84ce4b6",
              "data": {
                "optionName": "option_12d81c6395a64e3594c65e51e120384d",
                "optionId": "",
                "controlCheck": "return not tracker.lht(context.current_process_node.sourceId, context.current_process_node.targetId)",
                "controlType": "visible"
              }
            },
            "node_2a0e217c677a4c55977f290bcea23895-node_b2fbcb3e79c3455b9201eefa4ab410ac": {
              "sourceId": "node_2a0e217c677a4c55977f290bcea23895",
              "targetId": "node_b2fbcb3e79c3455b9201eefa4ab410ac",
              "data": {
                "optionName": "option_8fab2af52d5a48529d246e7dc8e14e71",
                "optionId": "",
                "controlCheck": "return not tracker.lht(context.current_process_node.sourceId, context.current_process_node.targetId)",
                "controlType": "visible"
              }
            },
            "node_be3daebef10644f3927530a8e84ce4b6-node_eaacda7fb0f7437da9943a0aa2c5cd24": {
              "sourceId": "node_be3daebef10644f3927530a8e84ce4b6",
              "targetId": "node_eaacda7fb0f7437da9943a0aa2c5cd24",
              "data": {}
            },
            "node_eaacda7fb0f7437da9943a0aa2c5cd24-node_5972197542c6439bb307683786621434": {
              "sourceId": "node_eaacda7fb0f7437da9943a0aa2c5cd24",
              "targetId": "node_5972197542c6439bb307683786621434",
              "data": {}
            },
            "node_5972197542c6439bb307683786621434-node_68b072fe2ed946bab39c88e3f2702c7f": {
              "sourceId": "node_5972197542c6439bb307683786621434",
              "targetId": "node_68b072fe2ed946bab39c88e3f2702c7f",
              "data": {}
            },
            "node_68b072fe2ed946bab39c88e3f2702c7f-node_20bc8bcf04a64e9984a67218e7951d18": {
              "sourceId": "node_68b072fe2ed946bab39c88e3f2702c7f",
              "targetId": "node_20bc8bcf04a64e9984a67218e7951d18",
              "data": {}
            },
            "node_20bc8bcf04a64e9984a67218e7951d18-node_af5db9b9c44f46449ef01b1116ec0a2e": {
              "sourceId": "node_20bc8bcf04a64e9984a67218e7951d18",
              "targetId": "node_af5db9b9c44f46449ef01b1116ec0a2e",
              "data": {}
            },
            "node_af5db9b9c44f46449ef01b1116ec0a2e-node_a5bfca7c0bec4208b70693d85a753483": {
              "sourceId": "node_af5db9b9c44f46449ef01b1116ec0a2e",
              "targetId": "node_a5bfca7c0bec4208b70693d85a753483",
              "data": {}
            },
            "node_a5bfca7c0bec4208b70693d85a753483-node_0e5d92709e3d4f3db9f6fb0845ad0d5e": {
              "sourceId": "node_a5bfca7c0bec4208b70693d85a753483",
              "targetId": "node_0e5d92709e3d4f3db9f6fb0845ad0d5e",
              "data": {}
            },
            "node_0e5d92709e3d4f3db9f6fb0845ad0d5e-node_a48aeff4a74c4be6a36598242760ad9c": {
              "sourceId": "node_0e5d92709e3d4f3db9f6fb0845ad0d5e",
              "targetId": "node_a48aeff4a74c4be6a36598242760ad9c",
              "data": {}
            },
            "node_a48aeff4a74c4be6a36598242760ad9c-node_534e56ffa6594d40a87cbd98f14e47ff": {
              "sourceId": "node_a48aeff4a74c4be6a36598242760ad9c",
              "targetId": "node_534e56ffa6594d40a87cbd98f14e47ff",
              "data": {}
            },
            "node_534e56ffa6594d40a87cbd98f14e47ff-node_9b72284044cf4284898d3bf77bbc999e": {
              "sourceId": "node_534e56ffa6594d40a87cbd98f14e47ff",
              "targetId": "node_9b72284044cf4284898d3bf77bbc999e",
              "data": {}
            },
            "node_9b72284044cf4284898d3bf77bbc999e-node_d15d766a741c4aecb49128f059895c49": {
              "sourceId": "node_9b72284044cf4284898d3bf77bbc999e",
              "targetId": "node_d15d766a741c4aecb49128f059895c49",
              "data": {}
            },
            "node_d15d766a741c4aecb49128f059895c49-node_ad42fd7ea07f4eec95dd485b0551ec09": {
              "sourceId": "node_d15d766a741c4aecb49128f059895c49",
              "targetId": "node_ad42fd7ea07f4eec95dd485b0551ec09",
              "data": {}
            },
            "node_ad42fd7ea07f4eec95dd485b0551ec09-node_f0beccd23cd0433d99087b3d3b648fc9": {
              "sourceId": "node_ad42fd7ea07f4eec95dd485b0551ec09",
              "targetId": "node_f0beccd23cd0433d99087b3d3b648fc9",
              "data": {}
            },
            "node_f0beccd23cd0433d99087b3d3b648fc9-node_3258159d88054607bb3d4c9a09baf647": {
              "sourceId": "node_f0beccd23cd0433d99087b3d3b648fc9",
              "targetId": "node_3258159d88054607bb3d4c9a09baf647",
              "data": {}
            },
            "node_b2fbcb3e79c3455b9201eefa4ab410ac-node_7f4262e595b046a4a4af1ed4f67533ea": {
              "sourceId": "node_b2fbcb3e79c3455b9201eefa4ab410ac",
              "targetId": "node_7f4262e595b046a4a4af1ed4f67533ea",
              "data": {}
            },
            "node_7f4262e595b046a4a4af1ed4f67533ea-node_b4d7f820dac04e2ea941e73bbad44ab2": {
              "sourceId": "node_7f4262e595b046a4a4af1ed4f67533ea",
              "targetId": "node_b4d7f820dac04e2ea941e73bbad44ab2",
              "data": {}
            },
            "node_b4d7f820dac04e2ea941e73bbad44ab2-node_7889ba0f821a42a09dbae48f26040e16": {
              "sourceId": "node_b4d7f820dac04e2ea941e73bbad44ab2",
              "targetId": "node_7889ba0f821a42a09dbae48f26040e16",
              "data": {}
            },
            "node_7889ba0f821a42a09dbae48f26040e16-node_5f2db6d7747f4494bec1c6dca3d334b6": {
              "sourceId": "node_7889ba0f821a42a09dbae48f26040e16",
              "targetId": "node_5f2db6d7747f4494bec1c6dca3d334b6",
              "data": {}
            },
            "node_5f2db6d7747f4494bec1c6dca3d334b6-node_2396f8e0183a452684413e82bfd0112c": {
              "sourceId": "node_5f2db6d7747f4494bec1c6dca3d334b6",
              "targetId": "node_2396f8e0183a452684413e82bfd0112c",
              "data": {}
            },
            "node_98dcbcae8a584c87bcd4158922644e06-node_5d10f4b2b2454b7b8183c75fa1b879b6": {
              "sourceId": "node_98dcbcae8a584c87bcd4158922644e06",
              "targetId": "node_5d10f4b2b2454b7b8183c75fa1b879b6",
              "data": {}
            },
            "node_5d10f4b2b2454b7b8183c75fa1b879b6-node_13db26d06887451aad24ac8e1dc20c15": {
              "sourceId": "node_5d10f4b2b2454b7b8183c75fa1b879b6",
              "targetId": "node_13db26d06887451aad24ac8e1dc20c15",
              "data": {}
            },
            "node_3258159d88054607bb3d4c9a09baf647-node_78c3f995be6745c9b06bb5940d44571c": {
              "sourceId": "node_3258159d88054607bb3d4c9a09baf647",
              "targetId": "node_78c3f995be6745c9b06bb5940d44571c",
              "data": {}
            },
            "node_13db26d06887451aad24ac8e1dc20c15-node_cc6c067b398a44eb92f40b79f336ef8b": {
              "sourceId": "node_13db26d06887451aad24ac8e1dc20c15",
              "targetId": "node_cc6c067b398a44eb92f40b79f336ef8b",
              "data": {}
            },
            "node_2396f8e0183a452684413e82bfd0112c-node_972d9e2198c34028a58b83c514a329fe": {
              "sourceId": "node_2396f8e0183a452684413e82bfd0112c",
              "targetId": "node_972d9e2198c34028a58b83c514a329fe",
              "data": {}
            },
            "node_972d9e2198c34028a58b83c514a329fe-node_98dcbcae8a584c87bcd4158922644e06": {
              "sourceId": "node_972d9e2198c34028a58b83c514a329fe",
              "targetId": "node_98dcbcae8a584c87bcd4158922644e06",
              "data": {}
            },
            "node_cc6c067b398a44eb92f40b79f336ef8b-node_996e1176157348fcb38a982b19dfb524": {
              "sourceId": "node_cc6c067b398a44eb92f40b79f336ef8b",
              "targetId": "node_996e1176157348fcb38a982b19dfb524",
              "data": {}
            },
            "node_f3d73040c1164c52abf716f34efe3994-node_4e2946d789014978bd62afb8950ffbbd": {
              "sourceId": "node_f3d73040c1164c52abf716f34efe3994",
              "targetId": "node_4e2946d789014978bd62afb8950ffbbd",
              "data": {}
            }
          },
          "name": "storylet5",
          "id": "storylet_97ee725b386346a8a48de387545f007d",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_038135610b644fa2b701affef574d365": {
              "id": "node_038135610b644fa2b701affef574d365",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "check_underground_box"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_f1671cc18def4bb49b2c6e0ba038d924": {
              "id": "node_f1671cc18def4bb49b2c6e0ba038d924",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].direction = \"up\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].direction = \"down\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\n"
                  }
                }
              }
            },
            "node_5c3a8b2e1cf541b6bf9a5333732fb5bc": {
              "id": "node_5c3a8b2e1cf541b6bf9a5333732fb5bc",
              "data": {
                "type": "sentence",
                "content": "content_24f3c11f1b8a4be898b1f49ee6acdf59",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c741dcb16b5c42afa12f17c1c3b1a409": {
              "id": "node_c741dcb16b5c42afa12f17c1c3b1a409",
              "data": {
                "type": "sentence",
                "content": "content_3a6f16c2a06743c19fd7f0bef039cfbd",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_10a6334d52f74cc1b1d049ce4d1d094c": {
              "id": "node_10a6334d52f74cc1b1d049ce4d1d094c",
              "data": {
                "type": "sentence",
                "content": "content_1361f17b5fe24be195f87f992ed4667f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3f2396d515124163b171d1c64f568f4e": {
              "id": "node_3f2396d515124163b171d1c64f568f4e",
              "data": {
                "type": "sentence",
                "content": "content_2c6f0101e8dd4680a53b2e3a88f35229",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_23fcfa46cd684e2fa473b445bbb4ddd8": {
              "id": "node_23fcfa46cd684e2fa473b445bbb4ddd8",
              "data": {
                "type": "sentence",
                "content": "content_5bacc338dced499d8164ea5e8c731076",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2d21eb31f21d46908b345082e9a30f97": {
              "id": "node_2d21eb31f21d46908b345082e9a30f97",
              "data": {
                "type": "sentence",
                "content": "content_d3ee6d819eba4877ac50631ce4fe43ef",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ac5934224d634d4f8041963fafeb8514": {
              "id": "node_ac5934224d634d4f8041963fafeb8514",
              "data": {
                "type": "sentence",
                "content": "content_ba00f919f032439daa7e7da3db22a2c5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f532bf73d03e49819dd069df248b5f3b": {
              "id": "node_f532bf73d03e49819dd069df248b5f3b",
              "data": {
                "type": "sentence",
                "content": "content_41f5aa1589c74b83a45a760c5ae76132",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_cdb8a20dd7754f09ad4750e62dfe4d3e": {
              "id": "node_cdb8a20dd7754f09ad4750e62dfe4d3e",
              "data": {
                "type": "sentence",
                "content": "content_50f57fdd053942e2b45c4c361b83335f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8a43bf6ae7664217ba729f9658a37043": {
              "id": "node_8a43bf6ae7664217ba729f9658a37043",
              "data": {
                "type": "sentence",
                "content": "content_01a0481338bf4a05954f6f94a488a9ff",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1b6747dd18c94c17b2611bf59eaec9cb": {
              "id": "node_1b6747dd18c94c17b2611bf59eaec9cb",
              "data": {
                "type": "sentence",
                "content": "content_4e45bbcdde444285b3b0e705d68b279a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_286874cc168f46979bb00b86be3a91d6": {
              "id": "node_286874cc168f46979bb00b86be3a91d6",
              "data": {
                "type": "sentence",
                "content": "content_4b5380801d7b450ba384ce34833d2c71",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5f82ef02d7df4a3dbc2d5bc70fe1814e": {
              "id": "node_5f82ef02d7df4a3dbc2d5bc70fe1814e",
              "data": {
                "type": "sentence",
                "content": "content_65ef624735d74de78f1635dc33482c92",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_39af9389bd8e4161b9aeb2734c603e94": {
              "id": "node_39af9389bd8e4161b9aeb2734c603e94",
              "data": {
                "type": "sentence",
                "content": "content_9e423727fc9a4aceb22fe0d22b86100d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9cd6a09108f349b6bdf920a87ef3345a": {
              "id": "node_9cd6a09108f349b6bdf920a87ef3345a",
              "data": {
                "type": "sentence",
                "content": "content_0956ec50c1b340f1bf1547d0340d67f1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_96cf2159d00e46bf840f79795ac4e3e0": {
              "id": "node_96cf2159d00e46bf840f79795ac4e3e0",
              "data": {
                "type": "sentence",
                "content": "content_be7eae090baf4ed28ad054a509746f56",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_dc852cc6daa94ef89b4220f8890a145d": {
              "id": "node_dc852cc6daa94ef89b4220f8890a145d",
              "data": {
                "type": "sentence",
                "content": "content_51e269a20dd840dab1c200387c9494a5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_15de89b6bb82434686ecea6699050476": {
              "id": "node_15de89b6bb82434686ecea6699050476",
              "data": {
                "type": "sentence",
                "content": "content_6f4e63223917498696da5c2171296f40",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e66b0eeb01f941739c4775c25efba06b": {
              "id": "node_e66b0eeb01f941739c4775c25efba06b",
              "data": {
                "type": "sentence",
                "content": "content_11c7a9a6966f42ac9a862317be17352e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5ceac3ed493f4bd889dc2c0efedf2132": {
              "id": "node_5ceac3ed493f4bd889dc2c0efedf2132",
              "data": {
                "type": "sentence",
                "content": "content_3cc5245a6e56444dbc6592b46b1d51f7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_653b87485aad439380514fdf1b0ae670": {
              "id": "node_653b87485aad439380514fdf1b0ae670",
              "data": {
                "type": "sentence",
                "content": "content_94165fe52ba9451f94e7658e2a271cf1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bae30615cc1d4cedb27db10860028b56": {
              "id": "node_bae30615cc1d4cedb27db10860028b56",
              "data": {
                "type": "sentence",
                "content": "content_4fcbfcf25c9943839c23535322a0fbe4",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6b4235027be84744b84890c0b69e57a9": {
              "id": "node_6b4235027be84744b84890c0b69e57a9",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nif tracker.shs(\"house.events.check_bookcase\"):\r\n    GameManager.next_event_storylet = \"house.events.check_conclusion\"\r\n    SceneChanger.change_scene(Constants.SCENES.HOUSE_EVENT)\r\nelse:\r\n    SceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            },
            "node_25f0c1b0531a46f99f6de595e33f689e": {
              "id": "node_25f0c1b0531a46f99f6de595e33f689e",
              "data": {
                "type": "sentence",
                "content": "content_bce7e33744cc4a05b266a85b7b9a45fc",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_038135610b644fa2b701affef574d365-node_f1671cc18def4bb49b2c6e0ba038d924": {
              "sourceId": "node_038135610b644fa2b701affef574d365",
              "targetId": "node_f1671cc18def4bb49b2c6e0ba038d924",
              "data": {}
            },
            "node_f1671cc18def4bb49b2c6e0ba038d924-node_5c3a8b2e1cf541b6bf9a5333732fb5bc": {
              "sourceId": "node_f1671cc18def4bb49b2c6e0ba038d924",
              "targetId": "node_5c3a8b2e1cf541b6bf9a5333732fb5bc",
              "data": {}
            },
            "node_c741dcb16b5c42afa12f17c1c3b1a409-node_10a6334d52f74cc1b1d049ce4d1d094c": {
              "sourceId": "node_c741dcb16b5c42afa12f17c1c3b1a409",
              "targetId": "node_10a6334d52f74cc1b1d049ce4d1d094c",
              "data": {}
            },
            "node_5c3a8b2e1cf541b6bf9a5333732fb5bc-node_3f2396d515124163b171d1c64f568f4e": {
              "sourceId": "node_5c3a8b2e1cf541b6bf9a5333732fb5bc",
              "targetId": "node_3f2396d515124163b171d1c64f568f4e",
              "data": {}
            },
            "node_3f2396d515124163b171d1c64f568f4e-node_c741dcb16b5c42afa12f17c1c3b1a409": {
              "sourceId": "node_3f2396d515124163b171d1c64f568f4e",
              "targetId": "node_c741dcb16b5c42afa12f17c1c3b1a409",
              "data": {}
            },
            "node_10a6334d52f74cc1b1d049ce4d1d094c-node_23fcfa46cd684e2fa473b445bbb4ddd8": {
              "sourceId": "node_10a6334d52f74cc1b1d049ce4d1d094c",
              "targetId": "node_23fcfa46cd684e2fa473b445bbb4ddd8",
              "data": {}
            },
            "node_23fcfa46cd684e2fa473b445bbb4ddd8-node_2d21eb31f21d46908b345082e9a30f97": {
              "sourceId": "node_23fcfa46cd684e2fa473b445bbb4ddd8",
              "targetId": "node_2d21eb31f21d46908b345082e9a30f97",
              "data": {}
            },
            "node_2d21eb31f21d46908b345082e9a30f97-node_ac5934224d634d4f8041963fafeb8514": {
              "sourceId": "node_2d21eb31f21d46908b345082e9a30f97",
              "targetId": "node_ac5934224d634d4f8041963fafeb8514",
              "data": {}
            },
            "node_ac5934224d634d4f8041963fafeb8514-node_f532bf73d03e49819dd069df248b5f3b": {
              "sourceId": "node_ac5934224d634d4f8041963fafeb8514",
              "targetId": "node_f532bf73d03e49819dd069df248b5f3b",
              "data": {}
            },
            "node_f532bf73d03e49819dd069df248b5f3b-node_cdb8a20dd7754f09ad4750e62dfe4d3e": {
              "sourceId": "node_f532bf73d03e49819dd069df248b5f3b",
              "targetId": "node_cdb8a20dd7754f09ad4750e62dfe4d3e",
              "data": {}
            },
            "node_cdb8a20dd7754f09ad4750e62dfe4d3e-node_8a43bf6ae7664217ba729f9658a37043": {
              "sourceId": "node_cdb8a20dd7754f09ad4750e62dfe4d3e",
              "targetId": "node_8a43bf6ae7664217ba729f9658a37043",
              "data": {}
            },
            "node_8a43bf6ae7664217ba729f9658a37043-node_1b6747dd18c94c17b2611bf59eaec9cb": {
              "sourceId": "node_8a43bf6ae7664217ba729f9658a37043",
              "targetId": "node_1b6747dd18c94c17b2611bf59eaec9cb",
              "data": {}
            },
            "node_1b6747dd18c94c17b2611bf59eaec9cb-node_286874cc168f46979bb00b86be3a91d6": {
              "sourceId": "node_1b6747dd18c94c17b2611bf59eaec9cb",
              "targetId": "node_286874cc168f46979bb00b86be3a91d6",
              "data": {}
            },
            "node_286874cc168f46979bb00b86be3a91d6-node_5f82ef02d7df4a3dbc2d5bc70fe1814e": {
              "sourceId": "node_286874cc168f46979bb00b86be3a91d6",
              "targetId": "node_5f82ef02d7df4a3dbc2d5bc70fe1814e",
              "data": {}
            },
            "node_5f82ef02d7df4a3dbc2d5bc70fe1814e-node_39af9389bd8e4161b9aeb2734c603e94": {
              "sourceId": "node_5f82ef02d7df4a3dbc2d5bc70fe1814e",
              "targetId": "node_39af9389bd8e4161b9aeb2734c603e94",
              "data": {}
            },
            "node_39af9389bd8e4161b9aeb2734c603e94-node_9cd6a09108f349b6bdf920a87ef3345a": {
              "sourceId": "node_39af9389bd8e4161b9aeb2734c603e94",
              "targetId": "node_9cd6a09108f349b6bdf920a87ef3345a",
              "data": {}
            },
            "node_9cd6a09108f349b6bdf920a87ef3345a-node_96cf2159d00e46bf840f79795ac4e3e0": {
              "sourceId": "node_9cd6a09108f349b6bdf920a87ef3345a",
              "targetId": "node_96cf2159d00e46bf840f79795ac4e3e0",
              "data": {}
            },
            "node_96cf2159d00e46bf840f79795ac4e3e0-node_dc852cc6daa94ef89b4220f8890a145d": {
              "sourceId": "node_96cf2159d00e46bf840f79795ac4e3e0",
              "targetId": "node_dc852cc6daa94ef89b4220f8890a145d",
              "data": {}
            },
            "node_dc852cc6daa94ef89b4220f8890a145d-node_15de89b6bb82434686ecea6699050476": {
              "sourceId": "node_dc852cc6daa94ef89b4220f8890a145d",
              "targetId": "node_15de89b6bb82434686ecea6699050476",
              "data": {}
            },
            "node_15de89b6bb82434686ecea6699050476-node_e66b0eeb01f941739c4775c25efba06b": {
              "sourceId": "node_15de89b6bb82434686ecea6699050476",
              "targetId": "node_e66b0eeb01f941739c4775c25efba06b",
              "data": {}
            },
            "node_e66b0eeb01f941739c4775c25efba06b-node_5ceac3ed493f4bd889dc2c0efedf2132": {
              "sourceId": "node_e66b0eeb01f941739c4775c25efba06b",
              "targetId": "node_5ceac3ed493f4bd889dc2c0efedf2132",
              "data": {}
            },
            "node_5ceac3ed493f4bd889dc2c0efedf2132-node_653b87485aad439380514fdf1b0ae670": {
              "sourceId": "node_5ceac3ed493f4bd889dc2c0efedf2132",
              "targetId": "node_653b87485aad439380514fdf1b0ae670",
              "data": {}
            },
            "node_653b87485aad439380514fdf1b0ae670-node_bae30615cc1d4cedb27db10860028b56": {
              "sourceId": "node_653b87485aad439380514fdf1b0ae670",
              "targetId": "node_bae30615cc1d4cedb27db10860028b56",
              "data": {}
            },
            "node_bae30615cc1d4cedb27db10860028b56-node_25f0c1b0531a46f99f6de595e33f689e": {
              "sourceId": "node_bae30615cc1d4cedb27db10860028b56",
              "targetId": "node_25f0c1b0531a46f99f6de595e33f689e",
              "data": {}
            },
            "node_25f0c1b0531a46f99f6de595e33f689e-node_6b4235027be84744b84890c0b69e57a9": {
              "sourceId": "node_25f0c1b0531a46f99f6de595e33f689e",
              "targetId": "node_6b4235027be84744b84890c0b69e57a9",
              "data": {}
            }
          },
          "name": "check_underground_box",
          "id": "88ff62039d4a4733952b2d83e82b31a8",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_8b22b0a92d8c475fbd40985a7e47cd10": {
              "id": "node_8b22b0a92d8c475fbd40985a7e47cd10",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "check_bookcase"
                },
                "onJumpProcess": "",
                "afterJumpProcess": "",
                "enableCheck": "return not tracker.nhs(context.current_process_node.id)"
              }
            },
            "node_88ac44a4a693450491481301c4d80cab": {
              "id": "node_88ac44a4a693450491481301c4d80cab",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"down\"\r\ncontext.character_map[\"sheng_qi\"].start_animation(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(328,472)\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].start_animation(\"idle\")\r\ncontext.character_map[\"joey\"].position = Vector2(392,462)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].start_animation(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(456,528)\r\n\r\nawait context.root.get_tree().create_timer(0.5).timeout"
                  }
                }
              }
            },
            "node_94b16eb5359b4516a2bd97c19dca84a5": {
              "id": "node_94b16eb5359b4516a2bd97c19dca84a5",
              "data": {
                "type": "sentence",
                "content": "content_4476310e9cea4ec2b2b7a6d1245b92ae",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_09a058ace93d41d7878fdae8dc841051": {
              "id": "node_09a058ace93d41d7878fdae8dc841051",
              "data": {
                "type": "sentence",
                "content": "content_42aea2161de54c6a8ec0f5653b3b9e6c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5d468c76ac4a4247b6d1aff8e013634f": {
              "id": "node_5d468c76ac4a4247b6d1aff8e013634f",
              "data": {
                "type": "sentence",
                "content": "content_ab487e20cb3e4749b3236f24ffb89379",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f22b2bc4b4384c14ab13d2d15c0fe9b8": {
              "id": "node_f22b2bc4b4384c14ab13d2d15c0fe9b8",
              "data": {
                "type": "sentence",
                "content": "content_c1bb92650ae5408c81ec8d9287b5c99b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fe6c1fd105954762924cc34ed526bffc": {
              "id": "node_fe6c1fd105954762924cc34ed526bffc",
              "data": {
                "type": "sentence",
                "content": "content_62eb65fd090c40a5977e976254ae69e6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b4293e71a85f47a8ab5a06c1480cbb57": {
              "id": "node_b4293e71a85f47a8ab5a06c1480cbb57",
              "data": {
                "type": "sentence",
                "content": "content_c666a0a306d04d1ba5f8ceb806e4c8fa",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_846e3a929247485c9b2d174177a6b05b": {
              "id": "node_846e3a929247485c9b2d174177a6b05b",
              "data": {
                "type": "sentence",
                "content": "content_24e606a7d7e349d4926ff9c2b9c7bc41",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_729097f6088848d787067e355f890217": {
              "id": "node_729097f6088848d787067e355f890217",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "pass"
                  }
                }
              }
            },
            "node_164a4df5c0de458996c42d6a05ebe8a0": {
              "id": "node_164a4df5c0de458996c42d6a05ebe8a0",
              "data": {
                "type": "sentence",
                "content": "content_381254a07b634ef08ce6bb90718f785a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_52920eb10495413e91c0800822631a20": {
              "id": "node_52920eb10495413e91c0800822631a20",
              "data": {
                "type": "sentence",
                "content": "content_cd0fd8c5749d4b10872cc5eafcd0dd3e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_aa6a6ea5994d41179bd55626d6d762cb": {
              "id": "node_aa6a6ea5994d41179bd55626d6d762cb",
              "data": {
                "type": "sentence",
                "content": "content_18007e08316644f5ba4baf3c78d97ea2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0674492ec78e462ead132222f4b0268d": {
              "id": "node_0674492ec78e462ead132222f4b0268d",
              "data": {
                "type": "sentence",
                "content": "content_614f97e14cd345db80086ccd185d5e81",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_27849b30dbec49f3b7253798297bb99b": {
              "id": "node_27849b30dbec49f3b7253798297bb99b",
              "data": {
                "type": "sentence",
                "content": "content_277bf89375d841c8a6cdca2d7bcb370e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0ef1d69b7e6644ae8034ade572392659": {
              "id": "node_0ef1d69b7e6644ae8034ade572392659",
              "data": {
                "type": "sentence",
                "content": "content_11d89d263f6d40079c6953e354b57d33",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b3d822d8b0e043b1a124c54fc7386ad1": {
              "id": "node_b3d822d8b0e043b1a124c54fc7386ad1",
              "data": {
                "type": "sentence",
                "content": "content_40b9b5a4d8d741188fbae9a425ffe108",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_07bd8ca50fbe4aef949b2def4f86fc3d": {
              "id": "node_07bd8ca50fbe4aef949b2def4f86fc3d",
              "data": {
                "type": "sentence",
                "content": "content_78ceb93251394a67980f7eea1ff1a0a1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_27cc1b2b88024cdd97dd7d80642f4c3d": {
              "id": "node_27cc1b2b88024cdd97dd7d80642f4c3d",
              "data": {
                "type": "branch",
                "content": "content_b5edd6881f6b469bb57c79bda653cc02",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_138d62fb776a430dafe5f420e0ff5f26": {
              "id": "node_138d62fb776a430dafe5f420e0ff5f26",
              "data": {
                "type": "sentence",
                "content": "content_c082fc1ffb0c4ed48532dfc34b219dc0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_02b84c9f2588433180ce5642eb1db682": {
              "id": "node_02b84c9f2588433180ce5642eb1db682",
              "data": {
                "type": "sentence",
                "content": "content_99c1d34a4f6b496584cdbf1d8f24014d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "reason"
              }
            },
            "node_4d8610ea3af94c7fb8b1b19f3fca8198": {
              "id": "node_4d8610ea3af94c7fb8b1b19f3fca8198",
              "data": {
                "type": "sentence",
                "content": "content_54816ffc39fc4b25b522bf51caca6693",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_423b9a84896e44dc80d4c606999e8f47": {
              "id": "node_423b9a84896e44dc80d4c606999e8f47",
              "data": {
                "type": "sentence",
                "content": "content_00801691a4b04b52aba6942dfb686fcf",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_086fb6bfe64142c58c68dda4e00fb105": {
              "id": "node_086fb6bfe64142c58c68dda4e00fb105",
              "data": {
                "type": "sentence",
                "content": "content_160aef71bbb8417399ba6274286e6c91",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f4a17954a16147c6a5d9e35cc1f317b2": {
              "id": "node_f4a17954a16147c6a5d9e35cc1f317b2",
              "data": {
                "type": "sentence",
                "content": "content_a2682d017d114023b6704a228431436b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_513e35443d8347bdaecb86790e35a554": {
              "id": "node_513e35443d8347bdaecb86790e35a554",
              "data": {
                "type": "sentence",
                "content": "content_801e01eea6a64d969efe9c3661932c12",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_46ec2f0e83ed49beade4d908dd9cae36": {
              "id": "node_46ec2f0e83ed49beade4d908dd9cae36",
              "data": {
                "type": "sentence",
                "content": "content_3f5244f07b884518801f1e27ca99024b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2184dc074016486cb05e7868f242effd": {
              "id": "node_2184dc074016486cb05e7868f242effd",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "direct",
                  "target_node_id": "reason"
                }
              }
            },
            "node_6b26538797c040579cad259fac53a21c": {
              "id": "node_6b26538797c040579cad259fac53a21c",
              "data": {
                "type": "sentence",
                "content": "content_ef047a8f861e43cf920ccf8cee51006f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_84b6afb4784c48c882c7299cfd7bcf93": {
              "id": "node_84b6afb4784c48c882c7299cfd7bcf93",
              "data": {
                "type": "sentence",
                "content": "content_108b20b1ddcb485c8ca9b4584113b224",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8275e4dca707472e948e71254cfe8e8b": {
              "id": "node_8275e4dca707472e948e71254cfe8e8b",
              "data": {
                "type": "sentence",
                "content": "content_b9767d707697417b827962c021237627",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_79960f2e8b804e0ba453af620e5a53f6": {
              "id": "node_79960f2e8b804e0ba453af620e5a53f6",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nif tracker.shs(\"house.events.check_underground_box\"):\r\n    GameManager.next_event_storylet = \"house.events.check_conclusion\"\r\n    SceneChanger.change_scene(Constants.SCENES.HOUSE_EVENT)\r\nelse:\r\n    SceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            },
            "node_e1e5e47be7ec4a0e8c37992248da7883": {
              "id": "node_e1e5e47be7ec4a0e8c37992248da7883",
              "data": {
                "type": "sentence",
                "content": "content_eef8e2371a7d483e9853c6f1651a1919",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_4a47ece48b90416e813afe9720f2a020": {
              "id": "node_4a47ece48b90416e813afe9720f2a020",
              "data": {
                "type": "sentence",
                "content": "content_0a73eb97a2f746739c710da9145c59ab",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_251eb464df2348d2b2b248e41fe2943e": {
              "id": "node_251eb464df2348d2b2b248e41fe2943e",
              "data": {
                "type": "sentence",
                "content": "content_a61934b9d7d24e62ab62e46948e17ef5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_8b22b0a92d8c475fbd40985a7e47cd10-node_88ac44a4a693450491481301c4d80cab": {
              "sourceId": "node_8b22b0a92d8c475fbd40985a7e47cd10",
              "targetId": "node_88ac44a4a693450491481301c4d80cab",
              "data": {}
            },
            "node_88ac44a4a693450491481301c4d80cab-node_94b16eb5359b4516a2bd97c19dca84a5": {
              "sourceId": "node_88ac44a4a693450491481301c4d80cab",
              "targetId": "node_94b16eb5359b4516a2bd97c19dca84a5",
              "data": {}
            },
            "node_09a058ace93d41d7878fdae8dc841051-node_5d468c76ac4a4247b6d1aff8e013634f": {
              "sourceId": "node_09a058ace93d41d7878fdae8dc841051",
              "targetId": "node_5d468c76ac4a4247b6d1aff8e013634f",
              "data": {}
            },
            "node_5d468c76ac4a4247b6d1aff8e013634f-node_f22b2bc4b4384c14ab13d2d15c0fe9b8": {
              "sourceId": "node_5d468c76ac4a4247b6d1aff8e013634f",
              "targetId": "node_f22b2bc4b4384c14ab13d2d15c0fe9b8",
              "data": {}
            },
            "node_f22b2bc4b4384c14ab13d2d15c0fe9b8-node_fe6c1fd105954762924cc34ed526bffc": {
              "sourceId": "node_f22b2bc4b4384c14ab13d2d15c0fe9b8",
              "targetId": "node_fe6c1fd105954762924cc34ed526bffc",
              "data": {}
            },
            "node_fe6c1fd105954762924cc34ed526bffc-node_b4293e71a85f47a8ab5a06c1480cbb57": {
              "sourceId": "node_fe6c1fd105954762924cc34ed526bffc",
              "targetId": "node_b4293e71a85f47a8ab5a06c1480cbb57",
              "data": {}
            },
            "node_b4293e71a85f47a8ab5a06c1480cbb57-node_846e3a929247485c9b2d174177a6b05b": {
              "sourceId": "node_b4293e71a85f47a8ab5a06c1480cbb57",
              "targetId": "node_846e3a929247485c9b2d174177a6b05b",
              "data": {}
            },
            "node_846e3a929247485c9b2d174177a6b05b-node_729097f6088848d787067e355f890217": {
              "sourceId": "node_846e3a929247485c9b2d174177a6b05b",
              "targetId": "node_729097f6088848d787067e355f890217",
              "data": {}
            },
            "node_729097f6088848d787067e355f890217-node_164a4df5c0de458996c42d6a05ebe8a0": {
              "sourceId": "node_729097f6088848d787067e355f890217",
              "targetId": "node_164a4df5c0de458996c42d6a05ebe8a0",
              "data": {}
            },
            "node_164a4df5c0de458996c42d6a05ebe8a0-node_52920eb10495413e91c0800822631a20": {
              "sourceId": "node_164a4df5c0de458996c42d6a05ebe8a0",
              "targetId": "node_52920eb10495413e91c0800822631a20",
              "data": {}
            },
            "node_52920eb10495413e91c0800822631a20-node_aa6a6ea5994d41179bd55626d6d762cb": {
              "sourceId": "node_52920eb10495413e91c0800822631a20",
              "targetId": "node_aa6a6ea5994d41179bd55626d6d762cb",
              "data": {}
            },
            "node_aa6a6ea5994d41179bd55626d6d762cb-node_0674492ec78e462ead132222f4b0268d": {
              "sourceId": "node_aa6a6ea5994d41179bd55626d6d762cb",
              "targetId": "node_0674492ec78e462ead132222f4b0268d",
              "data": {}
            },
            "node_27849b30dbec49f3b7253798297bb99b-node_0ef1d69b7e6644ae8034ade572392659": {
              "sourceId": "node_27849b30dbec49f3b7253798297bb99b",
              "targetId": "node_0ef1d69b7e6644ae8034ade572392659",
              "data": {}
            },
            "node_b3d822d8b0e043b1a124c54fc7386ad1-node_07bd8ca50fbe4aef949b2def4f86fc3d": {
              "sourceId": "node_b3d822d8b0e043b1a124c54fc7386ad1",
              "targetId": "node_07bd8ca50fbe4aef949b2def4f86fc3d",
              "data": {}
            },
            "node_07bd8ca50fbe4aef949b2def4f86fc3d-node_27cc1b2b88024cdd97dd7d80642f4c3d": {
              "sourceId": "node_07bd8ca50fbe4aef949b2def4f86fc3d",
              "targetId": "node_27cc1b2b88024cdd97dd7d80642f4c3d",
              "data": {}
            },
            "node_27cc1b2b88024cdd97dd7d80642f4c3d-node_138d62fb776a430dafe5f420e0ff5f26": {
              "sourceId": "node_27cc1b2b88024cdd97dd7d80642f4c3d",
              "targetId": "node_138d62fb776a430dafe5f420e0ff5f26",
              "data": {
                "optionName": "option_bfebccaad765424d9c36a5c3856647aa",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_27cc1b2b88024cdd97dd7d80642f4c3d-node_02b84c9f2588433180ce5642eb1db682": {
              "sourceId": "node_27cc1b2b88024cdd97dd7d80642f4c3d",
              "targetId": "node_02b84c9f2588433180ce5642eb1db682",
              "data": {
                "optionName": "option_698f538292b940c1a7d4dde578aa6fc9",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_02b84c9f2588433180ce5642eb1db682-node_4d8610ea3af94c7fb8b1b19f3fca8198": {
              "sourceId": "node_02b84c9f2588433180ce5642eb1db682",
              "targetId": "node_4d8610ea3af94c7fb8b1b19f3fca8198",
              "data": {}
            },
            "node_4d8610ea3af94c7fb8b1b19f3fca8198-node_423b9a84896e44dc80d4c606999e8f47": {
              "sourceId": "node_4d8610ea3af94c7fb8b1b19f3fca8198",
              "targetId": "node_423b9a84896e44dc80d4c606999e8f47",
              "data": {}
            },
            "node_423b9a84896e44dc80d4c606999e8f47-node_086fb6bfe64142c58c68dda4e00fb105": {
              "sourceId": "node_423b9a84896e44dc80d4c606999e8f47",
              "targetId": "node_086fb6bfe64142c58c68dda4e00fb105",
              "data": {}
            },
            "node_086fb6bfe64142c58c68dda4e00fb105-node_f4a17954a16147c6a5d9e35cc1f317b2": {
              "sourceId": "node_086fb6bfe64142c58c68dda4e00fb105",
              "targetId": "node_f4a17954a16147c6a5d9e35cc1f317b2",
              "data": {}
            },
            "node_138d62fb776a430dafe5f420e0ff5f26-node_513e35443d8347bdaecb86790e35a554": {
              "sourceId": "node_138d62fb776a430dafe5f420e0ff5f26",
              "targetId": "node_513e35443d8347bdaecb86790e35a554",
              "data": {}
            },
            "node_513e35443d8347bdaecb86790e35a554-node_46ec2f0e83ed49beade4d908dd9cae36": {
              "sourceId": "node_513e35443d8347bdaecb86790e35a554",
              "targetId": "node_46ec2f0e83ed49beade4d908dd9cae36",
              "data": {}
            },
            "node_46ec2f0e83ed49beade4d908dd9cae36-node_2184dc074016486cb05e7868f242effd": {
              "sourceId": "node_46ec2f0e83ed49beade4d908dd9cae36",
              "targetId": "node_2184dc074016486cb05e7868f242effd",
              "data": {}
            },
            "node_f4a17954a16147c6a5d9e35cc1f317b2-node_6b26538797c040579cad259fac53a21c": {
              "sourceId": "node_f4a17954a16147c6a5d9e35cc1f317b2",
              "targetId": "node_6b26538797c040579cad259fac53a21c",
              "data": {}
            },
            "node_6b26538797c040579cad259fac53a21c-node_84b6afb4784c48c882c7299cfd7bcf93": {
              "sourceId": "node_6b26538797c040579cad259fac53a21c",
              "targetId": "node_84b6afb4784c48c882c7299cfd7bcf93",
              "data": {}
            },
            "node_84b6afb4784c48c882c7299cfd7bcf93-node_8275e4dca707472e948e71254cfe8e8b": {
              "sourceId": "node_84b6afb4784c48c882c7299cfd7bcf93",
              "targetId": "node_8275e4dca707472e948e71254cfe8e8b",
              "data": {}
            },
            "node_8275e4dca707472e948e71254cfe8e8b-node_79960f2e8b804e0ba453af620e5a53f6": {
              "sourceId": "node_8275e4dca707472e948e71254cfe8e8b",
              "targetId": "node_79960f2e8b804e0ba453af620e5a53f6",
              "data": {}
            },
            "node_0674492ec78e462ead132222f4b0268d-node_e1e5e47be7ec4a0e8c37992248da7883": {
              "sourceId": "node_0674492ec78e462ead132222f4b0268d",
              "targetId": "node_e1e5e47be7ec4a0e8c37992248da7883",
              "data": {}
            },
            "node_0ef1d69b7e6644ae8034ade572392659-node_4a47ece48b90416e813afe9720f2a020": {
              "sourceId": "node_0ef1d69b7e6644ae8034ade572392659",
              "targetId": "node_4a47ece48b90416e813afe9720f2a020",
              "data": {}
            },
            "node_4a47ece48b90416e813afe9720f2a020-node_b3d822d8b0e043b1a124c54fc7386ad1": {
              "sourceId": "node_4a47ece48b90416e813afe9720f2a020",
              "targetId": "node_b3d822d8b0e043b1a124c54fc7386ad1",
              "data": {}
            },
            "node_94b16eb5359b4516a2bd97c19dca84a5-node_09a058ace93d41d7878fdae8dc841051": {
              "sourceId": "node_94b16eb5359b4516a2bd97c19dca84a5",
              "targetId": "node_09a058ace93d41d7878fdae8dc841051",
              "data": {}
            },
            "node_e1e5e47be7ec4a0e8c37992248da7883-node_251eb464df2348d2b2b248e41fe2943e": {
              "sourceId": "node_e1e5e47be7ec4a0e8c37992248da7883",
              "targetId": "node_251eb464df2348d2b2b248e41fe2943e",
              "data": {}
            },
            "node_251eb464df2348d2b2b248e41fe2943e-node_27849b30dbec49f3b7253798297bb99b": {
              "sourceId": "node_251eb464df2348d2b2b248e41fe2943e",
              "targetId": "node_27849b30dbec49f3b7253798297bb99b",
              "data": {}
            }
          },
          "name": "storylet32",
          "id": "f5bb773c9d154f66b2a88d249abea77f",
          "conditions": []
        }
      },
      {
        "groupId": "group_f4e963c2956d4808988dbff586964578",
        "data": {
          "nodes": {
            "node_dbabc3ef91ae4c27b302eaf45ca7539b": {
              "id": "node_dbabc3ef91ae4c27b302eaf45ca7539b",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "table_show_task"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_bd55f3d759e648e9b2eb76d472ad4b92": {
              "id": "node_bd55f3d759e648e9b2eb76d472ad4b92",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.show_task()"
                  }
                }
              }
            }
          },
          "links": {
            "node_dbabc3ef91ae4c27b302eaf45ca7539b-node_bd55f3d759e648e9b2eb76d472ad4b92": {
              "sourceId": "node_dbabc3ef91ae4c27b302eaf45ca7539b",
              "targetId": "node_bd55f3d759e648e9b2eb76d472ad4b92",
              "data": {}
            }
          },
          "name": "storylet15",
          "id": "storylet_921051ebf82b4bc088f476ebf60134ff",
          "conditions": []
        }
      },
      {
        "groupId": "group_adf4b83b3cef48c9a4726329cd1b1d9e",
        "data": {
          "nodes": {
            "node_8cbc3c233c4b4ac39510c2b47dad2bcc": {
              "id": "node_8cbc3c233c4b4ac39510c2b47dad2bcc",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "mark"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_5c850acaac8b4521bd59c9a573dfc884": {
              "id": "node_5c850acaac8b4521bd59c9a573dfc884",
              "data": {
                "type": "sentence",
                "content": "content_b1652b87f98a463d9c9df36b44d38aa6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_8cbc3c233c4b4ac39510c2b47dad2bcc-node_5c850acaac8b4521bd59c9a573dfc884": {
              "sourceId": "node_8cbc3c233c4b4ac39510c2b47dad2bcc",
              "targetId": "node_5c850acaac8b4521bd59c9a573dfc884",
              "data": {}
            }
          },
          "name": "storylet5",
          "id": "storylet_a60e0108cd354e0e9ae4e39bf9568b4f",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_48268e2631ab4c01ad191fd7bdde75c9": {
              "id": "node_48268e2631ab4c01ad191fd7bdde75c9",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "check_conclusion"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_32cc7b26703d45ffbb3f942ac3abbbd8": {
              "id": "node_32cc7b26703d45ffbb3f942ac3abbbd8",
              "data": {
                "type": "sentence",
                "content": "content_103905232df045a39db58a60d2b96ffe",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_764623fca6284239836ad12df0028897": {
              "id": "node_764623fca6284239836ad12df0028897",
              "data": {
                "type": "sentence",
                "content": "content_3aed3737a4064021b6eea87db64cfdd5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_4b24145f79094ed59c2afb331e6c1b29": {
              "id": "node_4b24145f79094ed59c2afb331e6c1b29",
              "data": {
                "type": "sentence",
                "content": "content_4aca50f1f0bb479db677da355de4fd0e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f8ccf157268a497381618febac7a470d": {
              "id": "node_f8ccf157268a497381618febac7a470d",
              "data": {
                "type": "sentence",
                "content": "content_27b6164b0405495889c31cea910e0346",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f9123da340524049b428663ed37919d6": {
              "id": "node_f9123da340524049b428663ed37919d6",
              "data": {
                "type": "sentence",
                "content": "content_569b708d43a64278849d00be5837d8ac",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_235129edf6a14e789fe37b775a605fe2": {
              "id": "node_235129edf6a14e789fe37b775a605fe2",
              "data": {
                "type": "sentence",
                "content": "content_41ac500ffce14210aba7a55c37c1d859",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_37b7a283858d4e12a4920486010f7c81": {
              "id": "node_37b7a283858d4e12a4920486010f7c81",
              "data": {
                "type": "sentence",
                "content": "content_1b00e1626c2443289369a141d91445c5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_44fda076360e443d9d67cec936707081": {
              "id": "node_44fda076360e443d9d67cec936707081",
              "data": {
                "type": "sentence",
                "content": "content_49b53bcacb184a9fb0d0992d1986a5d4",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_ef811c26156c443ab18a8fe63acd6023": {
              "id": "node_ef811c26156c443ab18a8fe63acd6023",
              "data": {
                "type": "sentence",
                "content": "content_5b991d4886b6471ba463aee1f824e3c3",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_0fb996006a364f4f9fa2d499b8ce1d83": {
              "id": "node_0fb996006a364f4f9fa2d499b8ce1d83",
              "data": {
                "type": "sentence",
                "content": "content_37c49fbcb54b4105ba957141caebabdb",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_35be74fc37644a1a86ded638ede8c83b": {
              "id": "node_35be74fc37644a1a86ded638ede8c83b",
              "data": {
                "type": "sentence",
                "content": "content_6d70e4cc49d64dd2b6496d2cd8f29f17",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_edcc62409a02421ab054e037f28af1a4": {
              "id": "node_edcc62409a02421ab054e037f28af1a4",
              "data": {
                "type": "sentence",
                "content": "content_7cccbf61e676426aba84bdbfb30fb231",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d2a1f91c281844c4a3a6d2ad28b7ddb6": {
              "id": "node_d2a1f91c281844c4a3a6d2ad28b7ddb6",
              "data": {
                "type": "sentence",
                "content": "content_b8ecc4a6ce09427ba66e0a344da23021",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bf52fb94ae1b4c27b7061da2d1c10482": {
              "id": "node_bf52fb94ae1b4c27b7061da2d1c10482",
              "data": {
                "type": "sentence",
                "content": "content_575902500128426585c7e23ebfeb6d14",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c1c8df1a41e843fc8702f21a42e6a7c5": {
              "id": "node_c1c8df1a41e843fc8702f21a42e6a7c5",
              "data": {
                "type": "sentence",
                "content": "content_f510fb5d90504a5ba06003ff0b6b55b5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5914ab66c960427f8f92cfb16c427c68": {
              "id": "node_5914ab66c960427f8f92cfb16c427c68",
              "data": {
                "type": "sentence",
                "content": "content_5ef146b2395a4880817f534eb4639195",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7afb574049ca43ec910767202c23fa3b": {
              "id": "node_7afb574049ca43ec910767202c23fa3b",
              "data": {
                "type": "sentence",
                "content": "content_cdbd3621aee04c2d8537f7ad0002a13d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e01e5e3ffb1746a4b4bb29e74e3b5ced": {
              "id": "node_e01e5e3ffb1746a4b4bb29e74e3b5ced",
              "data": {
                "type": "sentence",
                "content": "content_6054c5a7f38a4e5cacca8428e6c06c8a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bb91b5f3dfdb468c833b7ea740ae7070": {
              "id": "node_bb91b5f3dfdb468c833b7ea740ae7070",
              "data": {
                "type": "sentence",
                "content": "content_a123b741681249aaa2c97d6a4e634516",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1eb2c848f20644ca852a640484f62aa9": {
              "id": "node_1eb2c848f20644ca852a640484f62aa9",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nSceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            },
            "node_89e41e31a055477ba0daee496bf34386": {
              "id": "node_89e41e31a055477ba0daee496bf34386",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(936,456)\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].position = Vector2(864,372)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(1016,372)"
                  }
                }
              }
            }
          },
          "links": {
            "node_32cc7b26703d45ffbb3f942ac3abbbd8-node_764623fca6284239836ad12df0028897": {
              "sourceId": "node_32cc7b26703d45ffbb3f942ac3abbbd8",
              "targetId": "node_764623fca6284239836ad12df0028897",
              "data": {}
            },
            "node_764623fca6284239836ad12df0028897-node_4b24145f79094ed59c2afb331e6c1b29": {
              "sourceId": "node_764623fca6284239836ad12df0028897",
              "targetId": "node_4b24145f79094ed59c2afb331e6c1b29",
              "data": {}
            },
            "node_4b24145f79094ed59c2afb331e6c1b29-node_f8ccf157268a497381618febac7a470d": {
              "sourceId": "node_4b24145f79094ed59c2afb331e6c1b29",
              "targetId": "node_f8ccf157268a497381618febac7a470d",
              "data": {}
            },
            "node_f8ccf157268a497381618febac7a470d-node_f9123da340524049b428663ed37919d6": {
              "sourceId": "node_f8ccf157268a497381618febac7a470d",
              "targetId": "node_f9123da340524049b428663ed37919d6",
              "data": {}
            },
            "node_f9123da340524049b428663ed37919d6-node_235129edf6a14e789fe37b775a605fe2": {
              "sourceId": "node_f9123da340524049b428663ed37919d6",
              "targetId": "node_235129edf6a14e789fe37b775a605fe2",
              "data": {}
            },
            "node_235129edf6a14e789fe37b775a605fe2-node_37b7a283858d4e12a4920486010f7c81": {
              "sourceId": "node_235129edf6a14e789fe37b775a605fe2",
              "targetId": "node_37b7a283858d4e12a4920486010f7c81",
              "data": {}
            },
            "node_37b7a283858d4e12a4920486010f7c81-node_44fda076360e443d9d67cec936707081": {
              "sourceId": "node_37b7a283858d4e12a4920486010f7c81",
              "targetId": "node_44fda076360e443d9d67cec936707081",
              "data": {}
            },
            "node_44fda076360e443d9d67cec936707081-node_ef811c26156c443ab18a8fe63acd6023": {
              "sourceId": "node_44fda076360e443d9d67cec936707081",
              "targetId": "node_ef811c26156c443ab18a8fe63acd6023",
              "data": {}
            },
            "node_ef811c26156c443ab18a8fe63acd6023-node_0fb996006a364f4f9fa2d499b8ce1d83": {
              "sourceId": "node_ef811c26156c443ab18a8fe63acd6023",
              "targetId": "node_0fb996006a364f4f9fa2d499b8ce1d83",
              "data": {}
            },
            "node_0fb996006a364f4f9fa2d499b8ce1d83-node_35be74fc37644a1a86ded638ede8c83b": {
              "sourceId": "node_0fb996006a364f4f9fa2d499b8ce1d83",
              "targetId": "node_35be74fc37644a1a86ded638ede8c83b",
              "data": {}
            },
            "node_35be74fc37644a1a86ded638ede8c83b-node_edcc62409a02421ab054e037f28af1a4": {
              "sourceId": "node_35be74fc37644a1a86ded638ede8c83b",
              "targetId": "node_edcc62409a02421ab054e037f28af1a4",
              "data": {}
            },
            "node_edcc62409a02421ab054e037f28af1a4-node_d2a1f91c281844c4a3a6d2ad28b7ddb6": {
              "sourceId": "node_edcc62409a02421ab054e037f28af1a4",
              "targetId": "node_d2a1f91c281844c4a3a6d2ad28b7ddb6",
              "data": {}
            },
            "node_d2a1f91c281844c4a3a6d2ad28b7ddb6-node_bf52fb94ae1b4c27b7061da2d1c10482": {
              "sourceId": "node_d2a1f91c281844c4a3a6d2ad28b7ddb6",
              "targetId": "node_bf52fb94ae1b4c27b7061da2d1c10482",
              "data": {}
            },
            "node_bf52fb94ae1b4c27b7061da2d1c10482-node_c1c8df1a41e843fc8702f21a42e6a7c5": {
              "sourceId": "node_bf52fb94ae1b4c27b7061da2d1c10482",
              "targetId": "node_c1c8df1a41e843fc8702f21a42e6a7c5",
              "data": {}
            },
            "node_c1c8df1a41e843fc8702f21a42e6a7c5-node_5914ab66c960427f8f92cfb16c427c68": {
              "sourceId": "node_c1c8df1a41e843fc8702f21a42e6a7c5",
              "targetId": "node_5914ab66c960427f8f92cfb16c427c68",
              "data": {}
            },
            "node_5914ab66c960427f8f92cfb16c427c68-node_7afb574049ca43ec910767202c23fa3b": {
              "sourceId": "node_5914ab66c960427f8f92cfb16c427c68",
              "targetId": "node_7afb574049ca43ec910767202c23fa3b",
              "data": {}
            },
            "node_7afb574049ca43ec910767202c23fa3b-node_e01e5e3ffb1746a4b4bb29e74e3b5ced": {
              "sourceId": "node_7afb574049ca43ec910767202c23fa3b",
              "targetId": "node_e01e5e3ffb1746a4b4bb29e74e3b5ced",
              "data": {}
            },
            "node_e01e5e3ffb1746a4b4bb29e74e3b5ced-node_bb91b5f3dfdb468c833b7ea740ae7070": {
              "sourceId": "node_e01e5e3ffb1746a4b4bb29e74e3b5ced",
              "targetId": "node_bb91b5f3dfdb468c833b7ea740ae7070",
              "data": {}
            },
            "node_bb91b5f3dfdb468c833b7ea740ae7070-node_1eb2c848f20644ca852a640484f62aa9": {
              "sourceId": "node_bb91b5f3dfdb468c833b7ea740ae7070",
              "targetId": "node_1eb2c848f20644ca852a640484f62aa9",
              "data": {}
            },
            "node_48268e2631ab4c01ad191fd7bdde75c9-node_89e41e31a055477ba0daee496bf34386": {
              "sourceId": "node_48268e2631ab4c01ad191fd7bdde75c9",
              "targetId": "node_89e41e31a055477ba0daee496bf34386",
              "data": {}
            },
            "node_89e41e31a055477ba0daee496bf34386-node_32cc7b26703d45ffbb3f942ac3abbbd8": {
              "sourceId": "node_89e41e31a055477ba0daee496bf34386",
              "targetId": "node_32cc7b26703d45ffbb3f942ac3abbbd8",
              "data": {}
            }
          },
          "name": "storylet8",
          "id": "storylet_6ec11202704b468581b193f6da2183e8",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_c938175f9ad64687a5b2bb0a5b165809": {
              "id": "node_c938175f9ad64687a5b2bb0a5b165809",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "joey_talk1"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_daeafe465b0b430291ca0a49641c5c58": {
              "id": "node_daeafe465b0b430291ca0a49641c5c58",
              "data": {
                "type": "sentence",
                "content": "content_cd2a2b0aa062484eb31008fec3e87da2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_df898eeda500471d8e19bf13acb00f45": {
              "id": "node_df898eeda500471d8e19bf13acb00f45",
              "data": {
                "type": "sentence",
                "content": "content_1a60ec84acf84d62bd24ede4ee74e51f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8f0c70eddd5e49e08d6109f2a8c4689d": {
              "id": "node_8f0c70eddd5e49e08d6109f2a8c4689d",
              "data": {
                "type": "sentence",
                "content": "content_96cf76934eb947c0be03f45f163184db",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5": {
              "id": "node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5",
              "data": {
                "type": "sentence",
                "content": "content_9f9d80629ba747aeb8bdd46842d2d66c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_4dbfbef5687e41a28a5fc3cc982510b4": {
              "id": "node_4dbfbef5687e41a28a5fc3cc982510b4",
              "data": {
                "type": "sentence",
                "content": "content_7a80584337c24c74a139fb245182fd8f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_15685940de6247408ef7b88c90502d1a": {
              "id": "node_15685940de6247408ef7b88c90502d1a",
              "data": {
                "type": "sentence",
                "content": "content_7c0f29001071499fae11db66e8bf12ea",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5d4bc8eb87814cb591c2d15e65dc5dd1": {
              "id": "node_5d4bc8eb87814cb591c2d15e65dc5dd1",
              "data": {
                "type": "sentence",
                "content": "content_6ea933223eb54319975be829bc19586d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba": {
              "id": "node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba",
              "data": {
                "type": "sentence",
                "content": "content_19a5b1f6ecb54a8d992b5089ea68462d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_4d13f5bc38f943d7ac2238cb14b30587": {
              "id": "node_4d13f5bc38f943d7ac2238cb14b30587",
              "data": {
                "type": "sentence",
                "content": "content_29fef7f765b846a5b6eee77044e6d4be",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d1b93c68a48541d8838d32e04708630b": {
              "id": "node_d1b93c68a48541d8838d32e04708630b",
              "data": {
                "type": "sentence",
                "content": "content_1670b0d953994fd595cb3a6e958068fd",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_dd533c0ffef74a6299fecc5dea6d91c2": {
              "id": "node_dd533c0ffef74a6299fecc5dea6d91c2",
              "data": {
                "type": "sentence",
                "content": "content_9f55d389234c454c841fdca51686adb5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bb551f4a2fff4b679aca41cb39893d9d": {
              "id": "node_bb551f4a2fff4b679aca41cb39893d9d",
              "data": {
                "type": "sentence",
                "content": "content_b683d9d86f3d4cdcb0e8804a287acbc0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d56be9ff043645a787dcfc4cffed0840": {
              "id": "node_d56be9ff043645a787dcfc4cffed0840",
              "data": {
                "type": "sentence",
                "content": "content_c0a72916350d4b3ca5d3ddec9a1a943d",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_399fb7f1e82643c39d8462a3a8b536db": {
              "id": "node_399fb7f1e82643c39d8462a3a8b536db",
              "data": {
                "type": "sentence",
                "content": "content_dce434df63d3483ca7cb3d1467992fe8",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_23364fda3ba64fc888f57c658022fe42": {
              "id": "node_23364fda3ba64fc888f57c658022fe42",
              "data": {
                "type": "branch",
                "content": "content_f112135c3df442aea32f07c9bdaa5fd6",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_86f2ce0d4b1246c1a055f06395a1afb7": {
              "id": "node_86f2ce0d4b1246c1a055f06395a1afb7",
              "data": {
                "type": "sentence",
                "content": "content_f80a14d91cf04015a26df437dd62ffb5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_63ccdace15f44269a4caabfa8a3862b9": {
              "id": "node_63ccdace15f44269a4caabfa8a3862b9",
              "data": {
                "type": "sentence",
                "content": "content_78a1fe2cdc724db5a40c91a1a176b9b0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fbc0ce03ca2f45b8b7be0a6e7638292e": {
              "id": "node_fbc0ce03ca2f45b8b7be0a6e7638292e",
              "data": {
                "type": "sentence",
                "content": "content_4738f2bc78cf4486863433f75f03a29c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "dnd"
              }
            },
            "node_6ffbb8eace4f4efb9e269ec6349e56ed": {
              "id": "node_6ffbb8eace4f4efb9e269ec6349e56ed",
              "data": {
                "type": "sentence",
                "content": "content_b5f37d97e6914b9da198a928229b6f7b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f053543e69f2443f9f588ce24df86603": {
              "id": "node_f053543e69f2443f9f588ce24df86603",
              "data": {
                "type": "sentence",
                "content": "content_c9ec162a01b940dd9c017e3cfe6f2e52",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_5c4771c31c0944aaabf4359ae80509c8": {
              "id": "node_5c4771c31c0944aaabf4359ae80509c8",
              "data": {
                "type": "sentence",
                "content": "content_3966c2cacd40441b8046f85b312b5379",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_f1dd58ff31a749dfab477696437f2d77": {
              "id": "node_f1dd58ff31a749dfab477696437f2d77",
              "data": {
                "type": "sentence",
                "content": "content_cbe2296f0bea4df7a2b57752177c2307",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_65b84693a0864bc68add20a5c136b336": {
              "id": "node_65b84693a0864bc68add20a5c136b336",
              "data": {
                "type": "sentence",
                "content": "content_8e89b21ce1c94af39419699658f8ca6f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c6b2c6b4e7d9416682ab62835d246cd7": {
              "id": "node_c6b2c6b4e7d9416682ab62835d246cd7",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "direct",
                  "target_node_id": "dnd"
                }
              }
            },
            "node_36db5b49e02f4ee5a66dfa3153a1bde8": {
              "id": "node_36db5b49e02f4ee5a66dfa3153a1bde8",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "direct",
                  "target_node_id": "dnd"
                }
              }
            },
            "node_56617ec33ba241138cbea68240ef0119": {
              "id": "node_56617ec33ba241138cbea68240ef0119",
              "data": {
                "type": "sentence",
                "content": "content_2e9e30e91e1a4ddbaba46cd2498df492",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2319f92c7fe747288d5957e9844a3beb": {
              "id": "node_2319f92c7fe747288d5957e9844a3beb",
              "data": {
                "type": "sentence",
                "content": "content_f9b36bae31c94d598d8ebe2317fbed24",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2814d38f16dc498ab5fb09615ee103fe": {
              "id": "node_2814d38f16dc498ab5fb09615ee103fe",
              "data": {
                "type": "sentence",
                "content": "content_b8423308574f43f997bfbe5fac633f32",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": ""
              }
            },
            "node_35ce0dd4d08d463d9331a8c5553c7abf": {
              "id": "node_35ce0dd4d08d463d9331a8c5553c7abf",
              "data": {
                "type": "sentence",
                "content": "content_35489baf85c0483e88b917b3c902840f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e07c0b19d6d34cd694102f21f2343215": {
              "id": "node_e07c0b19d6d34cd694102f21f2343215",
              "data": {
                "type": "sentence",
                "content": "content_c97ba63c0c4343f2b0d7a4b192c68836",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": ""
              }
            },
            "node_ef03b4d85ad14435925bb8bbcd9ccffd": {
              "id": "node_ef03b4d85ad14435925bb8bbcd9ccffd",
              "data": {
                "type": "sentence",
                "content": "content_87961ca6fbf147139832ffe51eec5344",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d31e41c322f14507bd893a4e478651df": {
              "id": "node_d31e41c322f14507bd893a4e478651df",
              "data": {
                "type": "sentence",
                "content": "content_8b6465b8974f4f0083eb718d383a79ab",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3ac6337b54d84d44a5ab58d7afeccd01": {
              "id": "node_3ac6337b54d84d44a5ab58d7afeccd01",
              "data": {
                "type": "sentence",
                "content": "content_fe0f83da48ef4ee3aabf335b1d0aecba",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fe324078aff74ca88c9c3e9c256fcef1": {
              "id": "node_fe324078aff74ca88c9c3e9c256fcef1",
              "data": {
                "type": "sentence",
                "content": "content_8ec46fa0b1f141ea9d58458f30f76700",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7b2db60c9c12470c844026a212fc9d51": {
              "id": "node_7b2db60c9c12470c844026a212fc9d51",
              "data": {
                "type": "sentence",
                "content": "content_ba6a4d125d614ab1bdc961f7a679c9f2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8c14d09f742f473a9f1caf24bb563b1f": {
              "id": "node_8c14d09f742f473a9f1caf24bb563b1f",
              "data": {
                "type": "sentence",
                "content": "content_45e61637fe664b34b36486d5d68e01be",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6b97f007aac64c58aae76bfbed007f46": {
              "id": "node_6b97f007aac64c58aae76bfbed007f46",
              "data": {
                "type": "sentence",
                "content": "content_682229fa893d419db2fe8737d49b3400",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8a7a1314f4af4d2faf1522c49d01688e": {
              "id": "node_8a7a1314f4af4d2faf1522c49d01688e",
              "data": {
                "type": "sentence",
                "content": "content_0330779f81004314b78cdf7ff5c6e928",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d6335fcf738a4e44b41fd04f55c52dbd": {
              "id": "node_d6335fcf738a4e44b41fd04f55c52dbd",
              "data": {
                "type": "sentence",
                "content": "content_baa5d0c3a17f406fbdc1f5e84aae00ae",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_d7076d6fb83a4f0a8cc37212af008198": {
              "id": "node_d7076d6fb83a4f0a8cc37212af008198",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(936,456)\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].position = Vector2(864,372)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(1016,372)"
                  }
                }
              }
            },
            "node_e69a44324451450c95a1cc52b8fbeacf": {
              "id": "node_e69a44324451450c95a1cc52b8fbeacf",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nSceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            }
          },
          "links": {
            "node_daeafe465b0b430291ca0a49641c5c58-node_df898eeda500471d8e19bf13acb00f45": {
              "sourceId": "node_daeafe465b0b430291ca0a49641c5c58",
              "targetId": "node_df898eeda500471d8e19bf13acb00f45",
              "data": {}
            },
            "node_df898eeda500471d8e19bf13acb00f45-node_8f0c70eddd5e49e08d6109f2a8c4689d": {
              "sourceId": "node_df898eeda500471d8e19bf13acb00f45",
              "targetId": "node_8f0c70eddd5e49e08d6109f2a8c4689d",
              "data": {}
            },
            "node_8f0c70eddd5e49e08d6109f2a8c4689d-node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5": {
              "sourceId": "node_8f0c70eddd5e49e08d6109f2a8c4689d",
              "targetId": "node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5",
              "data": {}
            },
            "node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5-node_4dbfbef5687e41a28a5fc3cc982510b4": {
              "sourceId": "node_1bbe0a7c4c8647c4ba5bf8b99cfb4ab5",
              "targetId": "node_4dbfbef5687e41a28a5fc3cc982510b4",
              "data": {}
            },
            "node_4dbfbef5687e41a28a5fc3cc982510b4-node_15685940de6247408ef7b88c90502d1a": {
              "sourceId": "node_4dbfbef5687e41a28a5fc3cc982510b4",
              "targetId": "node_15685940de6247408ef7b88c90502d1a",
              "data": {}
            },
            "node_15685940de6247408ef7b88c90502d1a-node_5d4bc8eb87814cb591c2d15e65dc5dd1": {
              "sourceId": "node_15685940de6247408ef7b88c90502d1a",
              "targetId": "node_5d4bc8eb87814cb591c2d15e65dc5dd1",
              "data": {}
            },
            "node_5d4bc8eb87814cb591c2d15e65dc5dd1-node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba": {
              "sourceId": "node_5d4bc8eb87814cb591c2d15e65dc5dd1",
              "targetId": "node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba",
              "data": {}
            },
            "node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba-node_4d13f5bc38f943d7ac2238cb14b30587": {
              "sourceId": "node_6a3f5d6fe12c4f4fb7f4b53c70ccbcba",
              "targetId": "node_4d13f5bc38f943d7ac2238cb14b30587",
              "data": {}
            },
            "node_4d13f5bc38f943d7ac2238cb14b30587-node_d1b93c68a48541d8838d32e04708630b": {
              "sourceId": "node_4d13f5bc38f943d7ac2238cb14b30587",
              "targetId": "node_d1b93c68a48541d8838d32e04708630b",
              "data": {}
            },
            "node_d1b93c68a48541d8838d32e04708630b-node_dd533c0ffef74a6299fecc5dea6d91c2": {
              "sourceId": "node_d1b93c68a48541d8838d32e04708630b",
              "targetId": "node_dd533c0ffef74a6299fecc5dea6d91c2",
              "data": {}
            },
            "node_dd533c0ffef74a6299fecc5dea6d91c2-node_bb551f4a2fff4b679aca41cb39893d9d": {
              "sourceId": "node_dd533c0ffef74a6299fecc5dea6d91c2",
              "targetId": "node_bb551f4a2fff4b679aca41cb39893d9d",
              "data": {}
            },
            "node_bb551f4a2fff4b679aca41cb39893d9d-node_d56be9ff043645a787dcfc4cffed0840": {
              "sourceId": "node_bb551f4a2fff4b679aca41cb39893d9d",
              "targetId": "node_d56be9ff043645a787dcfc4cffed0840",
              "data": {}
            },
            "node_d56be9ff043645a787dcfc4cffed0840-node_399fb7f1e82643c39d8462a3a8b536db": {
              "sourceId": "node_d56be9ff043645a787dcfc4cffed0840",
              "targetId": "node_399fb7f1e82643c39d8462a3a8b536db",
              "data": {}
            },
            "node_399fb7f1e82643c39d8462a3a8b536db-node_23364fda3ba64fc888f57c658022fe42": {
              "sourceId": "node_399fb7f1e82643c39d8462a3a8b536db",
              "targetId": "node_23364fda3ba64fc888f57c658022fe42",
              "data": {}
            },
            "node_23364fda3ba64fc888f57c658022fe42-node_86f2ce0d4b1246c1a055f06395a1afb7": {
              "sourceId": "node_23364fda3ba64fc888f57c658022fe42",
              "targetId": "node_86f2ce0d4b1246c1a055f06395a1afb7",
              "data": {
                "optionName": "option_bcd0e04783974d8d942b79f6c20c600a",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_23364fda3ba64fc888f57c658022fe42-node_63ccdace15f44269a4caabfa8a3862b9": {
              "sourceId": "node_23364fda3ba64fc888f57c658022fe42",
              "targetId": "node_63ccdace15f44269a4caabfa8a3862b9",
              "data": {
                "optionName": "option_28196ade59f9420a8256f5b68ed4c4ff",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_23364fda3ba64fc888f57c658022fe42-node_fbc0ce03ca2f45b8b7be0a6e7638292e": {
              "sourceId": "node_23364fda3ba64fc888f57c658022fe42",
              "targetId": "node_fbc0ce03ca2f45b8b7be0a6e7638292e",
              "data": {
                "optionName": "option_c8ed5ae3c65d4036bf77b643547e9884",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_86f2ce0d4b1246c1a055f06395a1afb7-node_6ffbb8eace4f4efb9e269ec6349e56ed": {
              "sourceId": "node_86f2ce0d4b1246c1a055f06395a1afb7",
              "targetId": "node_6ffbb8eace4f4efb9e269ec6349e56ed",
              "data": {}
            },
            "node_63ccdace15f44269a4caabfa8a3862b9-node_f053543e69f2443f9f588ce24df86603": {
              "sourceId": "node_63ccdace15f44269a4caabfa8a3862b9",
              "targetId": "node_f053543e69f2443f9f588ce24df86603",
              "data": {}
            },
            "node_f053543e69f2443f9f588ce24df86603-node_5c4771c31c0944aaabf4359ae80509c8": {
              "sourceId": "node_f053543e69f2443f9f588ce24df86603",
              "targetId": "node_5c4771c31c0944aaabf4359ae80509c8",
              "data": {}
            },
            "node_5c4771c31c0944aaabf4359ae80509c8-node_f1dd58ff31a749dfab477696437f2d77": {
              "sourceId": "node_5c4771c31c0944aaabf4359ae80509c8",
              "targetId": "node_f1dd58ff31a749dfab477696437f2d77",
              "data": {}
            },
            "node_f1dd58ff31a749dfab477696437f2d77-node_65b84693a0864bc68add20a5c136b336": {
              "sourceId": "node_f1dd58ff31a749dfab477696437f2d77",
              "targetId": "node_65b84693a0864bc68add20a5c136b336",
              "data": {}
            },
            "node_6ffbb8eace4f4efb9e269ec6349e56ed-node_c6b2c6b4e7d9416682ab62835d246cd7": {
              "sourceId": "node_6ffbb8eace4f4efb9e269ec6349e56ed",
              "targetId": "node_c6b2c6b4e7d9416682ab62835d246cd7",
              "data": {}
            },
            "node_65b84693a0864bc68add20a5c136b336-node_36db5b49e02f4ee5a66dfa3153a1bde8": {
              "sourceId": "node_65b84693a0864bc68add20a5c136b336",
              "targetId": "node_36db5b49e02f4ee5a66dfa3153a1bde8",
              "data": {}
            },
            "node_fbc0ce03ca2f45b8b7be0a6e7638292e-node_56617ec33ba241138cbea68240ef0119": {
              "sourceId": "node_fbc0ce03ca2f45b8b7be0a6e7638292e",
              "targetId": "node_56617ec33ba241138cbea68240ef0119",
              "data": {}
            },
            "node_56617ec33ba241138cbea68240ef0119-node_2319f92c7fe747288d5957e9844a3beb": {
              "sourceId": "node_56617ec33ba241138cbea68240ef0119",
              "targetId": "node_2319f92c7fe747288d5957e9844a3beb",
              "data": {}
            },
            "node_2319f92c7fe747288d5957e9844a3beb-node_2814d38f16dc498ab5fb09615ee103fe": {
              "sourceId": "node_2319f92c7fe747288d5957e9844a3beb",
              "targetId": "node_2814d38f16dc498ab5fb09615ee103fe",
              "data": {}
            },
            "node_2814d38f16dc498ab5fb09615ee103fe-node_35ce0dd4d08d463d9331a8c5553c7abf": {
              "sourceId": "node_2814d38f16dc498ab5fb09615ee103fe",
              "targetId": "node_35ce0dd4d08d463d9331a8c5553c7abf",
              "data": {}
            },
            "node_35ce0dd4d08d463d9331a8c5553c7abf-node_e07c0b19d6d34cd694102f21f2343215": {
              "sourceId": "node_35ce0dd4d08d463d9331a8c5553c7abf",
              "targetId": "node_e07c0b19d6d34cd694102f21f2343215",
              "data": {}
            },
            "node_e07c0b19d6d34cd694102f21f2343215-node_ef03b4d85ad14435925bb8bbcd9ccffd": {
              "sourceId": "node_e07c0b19d6d34cd694102f21f2343215",
              "targetId": "node_ef03b4d85ad14435925bb8bbcd9ccffd",
              "data": {}
            },
            "node_ef03b4d85ad14435925bb8bbcd9ccffd-node_d31e41c322f14507bd893a4e478651df": {
              "sourceId": "node_ef03b4d85ad14435925bb8bbcd9ccffd",
              "targetId": "node_d31e41c322f14507bd893a4e478651df",
              "data": {}
            },
            "node_d31e41c322f14507bd893a4e478651df-node_3ac6337b54d84d44a5ab58d7afeccd01": {
              "sourceId": "node_d31e41c322f14507bd893a4e478651df",
              "targetId": "node_3ac6337b54d84d44a5ab58d7afeccd01",
              "data": {}
            },
            "node_3ac6337b54d84d44a5ab58d7afeccd01-node_fe324078aff74ca88c9c3e9c256fcef1": {
              "sourceId": "node_3ac6337b54d84d44a5ab58d7afeccd01",
              "targetId": "node_fe324078aff74ca88c9c3e9c256fcef1",
              "data": {}
            },
            "node_fe324078aff74ca88c9c3e9c256fcef1-node_7b2db60c9c12470c844026a212fc9d51": {
              "sourceId": "node_fe324078aff74ca88c9c3e9c256fcef1",
              "targetId": "node_7b2db60c9c12470c844026a212fc9d51",
              "data": {}
            },
            "node_8c14d09f742f473a9f1caf24bb563b1f-node_6b97f007aac64c58aae76bfbed007f46": {
              "sourceId": "node_8c14d09f742f473a9f1caf24bb563b1f",
              "targetId": "node_6b97f007aac64c58aae76bfbed007f46",
              "data": {}
            },
            "node_6b97f007aac64c58aae76bfbed007f46-node_8a7a1314f4af4d2faf1522c49d01688e": {
              "sourceId": "node_6b97f007aac64c58aae76bfbed007f46",
              "targetId": "node_8a7a1314f4af4d2faf1522c49d01688e",
              "data": {}
            },
            "node_7b2db60c9c12470c844026a212fc9d51-node_d6335fcf738a4e44b41fd04f55c52dbd": {
              "sourceId": "node_7b2db60c9c12470c844026a212fc9d51",
              "targetId": "node_d6335fcf738a4e44b41fd04f55c52dbd",
              "data": {}
            },
            "node_d6335fcf738a4e44b41fd04f55c52dbd-node_8c14d09f742f473a9f1caf24bb563b1f": {
              "sourceId": "node_d6335fcf738a4e44b41fd04f55c52dbd",
              "targetId": "node_8c14d09f742f473a9f1caf24bb563b1f",
              "data": {}
            },
            "node_c938175f9ad64687a5b2bb0a5b165809-node_d7076d6fb83a4f0a8cc37212af008198": {
              "sourceId": "node_c938175f9ad64687a5b2bb0a5b165809",
              "targetId": "node_d7076d6fb83a4f0a8cc37212af008198",
              "data": {}
            },
            "node_d7076d6fb83a4f0a8cc37212af008198-node_daeafe465b0b430291ca0a49641c5c58": {
              "sourceId": "node_d7076d6fb83a4f0a8cc37212af008198",
              "targetId": "node_daeafe465b0b430291ca0a49641c5c58",
              "data": {}
            },
            "node_8a7a1314f4af4d2faf1522c49d01688e-node_e69a44324451450c95a1cc52b8fbeacf": {
              "sourceId": "node_8a7a1314f4af4d2faf1522c49d01688e",
              "targetId": "node_e69a44324451450c95a1cc52b8fbeacf",
              "data": {}
            }
          },
          "name": "storylet9",
          "id": "storylet_42ae6b64b243411ab7316a72d41c8543",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_6f2fb40699e94145b8e1ab2569aed03f": {
              "id": "node_6f2fb40699e94145b8e1ab2569aed03f",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "joey_talk2"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_7065d149d9274062afa9d5ec6aea0363": {
              "id": "node_7065d149d9274062afa9d5ec6aea0363",
              "data": {
                "type": "sentence",
                "content": "content_62ec43f798cb4eeca8201bded0c772ce",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_fcbe1a92875a4078a8f16fffd0ff2829": {
              "id": "node_fcbe1a92875a4078a8f16fffd0ff2829",
              "data": {
                "type": "sentence",
                "content": "content_48a31c6f14024db39dd492b9cc7289d6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1ddaa79a143043b7a16555365837dfaf": {
              "id": "node_1ddaa79a143043b7a16555365837dfaf",
              "data": {
                "type": "sentence",
                "content": "content_7487136586d1440bb1119869d60ce82e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2283fadf2d9b4e428580fb4244b6fffc": {
              "id": "node_2283fadf2d9b4e428580fb4244b6fffc",
              "data": {
                "type": "sentence",
                "content": "content_23bc7c4c1b81451b8e2c38f08813e053",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_70e9cc8391ea4283a0ad5a70b68d959c": {
              "id": "node_70e9cc8391ea4283a0ad5a70b68d959c",
              "data": {
                "type": "branch",
                "content": "content_d4d7049e434844539a5e0a3c264137bb",
                "contentSpeed": {},
                "onJumpProcess": "",
                "enableConditions": [],
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_21ecca74c8d442fe84a6bd214bd5471a": {
              "id": "node_21ecca74c8d442fe84a6bd214bd5471a",
              "data": {
                "type": "sentence",
                "content": "content_4d7141664dc24b5c9356aada09765bf9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8a578cadb9fa42a7ba0adbd301f157d7": {
              "id": "node_8a578cadb9fa42a7ba0adbd301f157d7",
              "data": {
                "type": "sentence",
                "content": "content_f32cb46408094fe1ab09346617766e55",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1c9d54e4c45646d69e85adbd94cd96a8": {
              "id": "node_1c9d54e4c45646d69e85adbd94cd96a8",
              "data": {
                "type": "sentence",
                "content": "content_3d3a3fcb45684a25a9a0a58d8fd64e8c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_45b1d1878e62482dad5835c8d2d8399d": {
              "id": "node_45b1d1878e62482dad5835c8d2d8399d",
              "data": {
                "type": "sentence",
                "content": "content_93ba03cdc1c74d8ca4cd0e78c47aa882",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_2bf7afa7ee96405eb80c1c0a111be60a": {
              "id": "node_2bf7afa7ee96405eb80c1c0a111be60a",
              "data": {
                "type": "sentence",
                "content": "content_27acfc5e50314b9c96e4012c634ee01f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_df7e0fa6123547a18dbe0e04de2c9773": {
              "id": "node_df7e0fa6123547a18dbe0e04de2c9773",
              "data": {
                "type": "sentence",
                "content": "content_07fa41b3645f496cbfb79b72921fafee",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b700a703470f41a0841c5f44d66d602b": {
              "id": "node_b700a703470f41a0841c5f44d66d602b",
              "data": {
                "type": "sentence",
                "content": "content_390fb831248a4ff1b4bc28252c644d20",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a6602538dcfd4aafa5706c428d329ea2": {
              "id": "node_a6602538dcfd4aafa5706c428d329ea2",
              "data": {
                "type": "sentence",
                "content": "content_c3cb2ce6623c4f4e9d2351474a432ba0",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1704fbba45fb4ba78b05b00a4cf154f1": {
              "id": "node_1704fbba45fb4ba78b05b00a4cf154f1",
              "data": {
                "type": "sentence",
                "content": "content_81a1ddafcd6048708c9d4aa927635757",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left",
                "customNodeId": "rescure"
              }
            },
            "node_7120fb2c37da45f5babdbd6bf8188dbb": {
              "id": "node_7120fb2c37da45f5babdbd6bf8188dbb",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "jump_to_node",
                  "jump_type": "direct",
                  "target_node_id": "rescure"
                }
              }
            },
            "node_4c229cff2bcb4761925dc38921b07196": {
              "id": "node_4c229cff2bcb4761925dc38921b07196",
              "data": {
                "type": "sentence",
                "content": "content_6d7fd46b99e544dd8a9540d771886eaf",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_962d2108f1bf46a5ba52e18ba7295fee": {
              "id": "node_962d2108f1bf46a5ba52e18ba7295fee",
              "data": {
                "type": "sentence",
                "content": "content_803208dfec0e40b4a97f96c849b54bf6",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9cada41a844e413480b8b123612ce886": {
              "id": "node_9cada41a844e413480b8b123612ce886",
              "data": {
                "type": "sentence",
                "content": "content_530bac6126fa4d149d6e58a36712dc11",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_60c40de7f2d14ca3a8ff4e4d451d03ff": {
              "id": "node_60c40de7f2d14ca3a8ff4e4d451d03ff",
              "data": {
                "type": "sentence",
                "content": "content_29d1d3843844431cb383110f53f3269c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_95788a044d17432da008aca0741bfef6": {
              "id": "node_95788a044d17432da008aca0741bfef6",
              "data": {
                "type": "sentence",
                "content": "content_7e6a2fc13b3d48e0b905b80d8e6b112a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a13ce2f4c5534bbc882caecdd529fd24": {
              "id": "node_a13ce2f4c5534bbc882caecdd529fd24",
              "data": {
                "type": "sentence",
                "content": "content_f4d96e16c96343e9a2ec057e569b90ea",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9c01a43526094dc6af6503d0de2bf3e4": {
              "id": "node_9c01a43526094dc6af6503d0de2bf3e4",
              "data": {
                "type": "sentence",
                "content": "content_7c5447c6f36f478ba94766844835ef03",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3369c66f19e9472bb5ff9a28ddec4126": {
              "id": "node_3369c66f19e9472bb5ff9a28ddec4126",
              "data": {
                "type": "sentence",
                "content": "content_8aa9bdb714944b009ee7612875671ab9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_360420d2cba549388811065aae9b71c6": {
              "id": "node_360420d2cba549388811065aae9b71c6",
              "data": {
                "type": "sentence",
                "content": "content_89ffb62309bf46df9991161793b8b25c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a731d7af9a3f4b61ad39ca7caedadcfa": {
              "id": "node_a731d7af9a3f4b61ad39ca7caedadcfa",
              "data": {
                "type": "sentence",
                "content": "content_19b6a732b86642438d3e2fd4570258de",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_1e7f08a864ae4a7786516ba81ca5de9b": {
              "id": "node_1e7f08a864ae4a7786516ba81ca5de9b",
              "data": {
                "type": "sentence",
                "content": "content_3978f62c9ce549ee9d8768f1f58558d7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9730326262d0457d8b68d5bee1751c3a": {
              "id": "node_9730326262d0457d8b68d5bee1751c3a",
              "data": {
                "type": "sentence",
                "content": "content_a546f0b0809d409b8e481a32369d9f1a",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6af0360dc0d342e5b0fd06ab056ee026": {
              "id": "node_6af0360dc0d342e5b0fd06ab056ee026",
              "data": {
                "type": "sentence",
                "content": "content_e9df9e2884004165a70b5c55847bbc98",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7f4c3170f6e4460aa35e57dc5d2190bb": {
              "id": "node_7f4c3170f6e4460aa35e57dc5d2190bb",
              "data": {
                "type": "sentence",
                "content": "content_328c551f32214c56952f33d971e51576",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_68f2ffe1bcdc43f6a31f42f33e5a107b": {
              "id": "node_68f2ffe1bcdc43f6a31f42f33e5a107b",
              "data": {
                "type": "sentence",
                "content": "content_aa6f7e15fc4e4051b840f9142ec2bea7",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_e404cfa194df412b881651fff870eb21": {
              "id": "node_e404cfa194df412b881651fff870eb21",
              "data": {
                "type": "sentence",
                "content": "content_5b0fd77b60f0437e92c96e83e2002654",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_22348d01fcd84e73b1a2a7c3ffb0e9ab": {
              "id": "node_22348d01fcd84e73b1a2a7c3ffb0e9ab",
              "data": {
                "type": "sentence",
                "content": "content_c0d3aa1789014af6873a6f6efc39eac9",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_05345ae0b0a7479a8788aca3d161df31": {
              "id": "node_05345ae0b0a7479a8788aca3d161df31",
              "data": {
                "type": "sentence",
                "content": "content_050b970d97114c079fb19fd76452252f",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5": {
              "id": "node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5",
              "data": {
                "type": "sentence",
                "content": "content_43eee7c418944f42858293681b75ceed",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_bcef958ed68243a1a4f4c06b198e1f98": {
              "id": "node_bcef958ed68243a1a4f4c06b198e1f98",
              "data": {
                "type": "sentence",
                "content": "content_ca807f9b1f22492dbf27ffa4ba0465e3",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_cea24318a43a4b8db6f5f5f626c66381": {
              "id": "node_cea24318a43a4b8db6f5f5f626c66381",
              "data": {
                "type": "sentence",
                "content": "content_1fb9585dd2444d15be5306aa4d9461ee",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_16ebcd4308d348b8bfe4f77a627bc0d3": {
              "id": "node_16ebcd4308d348b8bfe4f77a627bc0d3",
              "data": {
                "type": "sentence",
                "content": "content_f1f0495f2c6d45ad8ae992d4b56f548e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c05a352f76a0459b917fc9c36aaddc2b": {
              "id": "node_c05a352f76a0459b917fc9c36aaddc2b",
              "data": {
                "type": "sentence",
                "content": "content_ba258b105ac447b6b7361e66c9514a83",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_20b60d8df34c4ffb9c9e5eb5600cc35b": {
              "id": "node_20b60d8df34c4ffb9c9e5eb5600cc35b",
              "data": {
                "type": "sentence",
                "content": "content_c8a388277b044559a920056df7533f83",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_c6e470f2d4a7425c8a0c3cbd01e86c14": {
              "id": "node_c6e470f2d4a7425c8a0c3cbd01e86c14",
              "data": {
                "type": "sentence",
                "content": "content_e6fef8831c4e4ad7af50b671d98cdac5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_db065d7360e843f18a05eb606d74f70d": {
              "id": "node_db065d7360e843f18a05eb606d74f70d",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"down\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(644,296)\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].position = Vector2(544,376)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(740,376)\r\n\r\ncontext.root.get_node(\"ChairRight\").position.x += 35\r\ncontext.root.get_node(\"ChairLeft\").position.x -= 35\r\ncontext.root.get_node(\"ChairTop\").z_index = 0 "
                  }
                }
              }
            },
            "node_cd158e6724804723bc5b93c411861b47": {
              "id": "node_cd158e6724804723bc5b93c411861b47",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen()"
                  }
                }
              }
            },
            "node_8d1b7a7d04724dc9b5dbd35c252cd100": {
              "id": "node_8d1b7a7d04724dc9b5dbd35c252cd100",
              "data": {
                "type": "sentence",
                "content": "content_2141b8fac333498aba5071b05c0e2d50",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_743f79f442f749e99466098cc2f2e43e": {
              "id": "node_743f79f442f749e99466098cc2f2e43e",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen()"
                  }
                }
              }
            },
            "node_c4324a57351c4d1b8a15430a140c681d": {
              "id": "node_c4324a57351c4d1b8a15430a140c681d",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen()"
                  }
                }
              }
            },
            "node_9e8478cc21474b8a87bb53d9fbc0c3fc": {
              "id": "node_9e8478cc21474b8a87bb53d9fbc0c3fc",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nSceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            }
          },
          "links": {
            "node_7065d149d9274062afa9d5ec6aea0363-node_fcbe1a92875a4078a8f16fffd0ff2829": {
              "sourceId": "node_7065d149d9274062afa9d5ec6aea0363",
              "targetId": "node_fcbe1a92875a4078a8f16fffd0ff2829",
              "data": {}
            },
            "node_2283fadf2d9b4e428580fb4244b6fffc-node_70e9cc8391ea4283a0ad5a70b68d959c": {
              "sourceId": "node_2283fadf2d9b4e428580fb4244b6fffc",
              "targetId": "node_70e9cc8391ea4283a0ad5a70b68d959c",
              "data": {}
            },
            "node_70e9cc8391ea4283a0ad5a70b68d959c-node_21ecca74c8d442fe84a6bd214bd5471a": {
              "sourceId": "node_70e9cc8391ea4283a0ad5a70b68d959c",
              "targetId": "node_21ecca74c8d442fe84a6bd214bd5471a",
              "data": {
                "optionName": "option_b6e10f88a18b40ce9f9d2eb076ff114c",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_70e9cc8391ea4283a0ad5a70b68d959c-node_8a578cadb9fa42a7ba0adbd301f157d7": {
              "sourceId": "node_70e9cc8391ea4283a0ad5a70b68d959c",
              "targetId": "node_8a578cadb9fa42a7ba0adbd301f157d7",
              "data": {
                "optionName": "option_bee2d85383da4deaa413bf830cc8c636",
                "optionId": "",
                "controlType": "visible",
                "controlCheck": ""
              }
            },
            "node_8a578cadb9fa42a7ba0adbd301f157d7-node_1c9d54e4c45646d69e85adbd94cd96a8": {
              "sourceId": "node_8a578cadb9fa42a7ba0adbd301f157d7",
              "targetId": "node_1c9d54e4c45646d69e85adbd94cd96a8",
              "data": {}
            },
            "node_1c9d54e4c45646d69e85adbd94cd96a8-node_45b1d1878e62482dad5835c8d2d8399d": {
              "sourceId": "node_1c9d54e4c45646d69e85adbd94cd96a8",
              "targetId": "node_45b1d1878e62482dad5835c8d2d8399d",
              "data": {}
            },
            "node_45b1d1878e62482dad5835c8d2d8399d-node_2bf7afa7ee96405eb80c1c0a111be60a": {
              "sourceId": "node_45b1d1878e62482dad5835c8d2d8399d",
              "targetId": "node_2bf7afa7ee96405eb80c1c0a111be60a",
              "data": {}
            },
            "node_2bf7afa7ee96405eb80c1c0a111be60a-node_df7e0fa6123547a18dbe0e04de2c9773": {
              "sourceId": "node_2bf7afa7ee96405eb80c1c0a111be60a",
              "targetId": "node_df7e0fa6123547a18dbe0e04de2c9773",
              "data": {}
            },
            "node_b700a703470f41a0841c5f44d66d602b-node_a6602538dcfd4aafa5706c428d329ea2": {
              "sourceId": "node_b700a703470f41a0841c5f44d66d602b",
              "targetId": "node_a6602538dcfd4aafa5706c428d329ea2",
              "data": {}
            },
            "node_df7e0fa6123547a18dbe0e04de2c9773-node_1704fbba45fb4ba78b05b00a4cf154f1": {
              "sourceId": "node_df7e0fa6123547a18dbe0e04de2c9773",
              "targetId": "node_1704fbba45fb4ba78b05b00a4cf154f1",
              "data": {}
            },
            "node_fcbe1a92875a4078a8f16fffd0ff2829-node_962d2108f1bf46a5ba52e18ba7295fee": {
              "sourceId": "node_fcbe1a92875a4078a8f16fffd0ff2829",
              "targetId": "node_962d2108f1bf46a5ba52e18ba7295fee",
              "data": {}
            },
            "node_962d2108f1bf46a5ba52e18ba7295fee-node_1ddaa79a143043b7a16555365837dfaf": {
              "sourceId": "node_962d2108f1bf46a5ba52e18ba7295fee",
              "targetId": "node_1ddaa79a143043b7a16555365837dfaf",
              "data": {}
            },
            "node_1ddaa79a143043b7a16555365837dfaf-node_9cada41a844e413480b8b123612ce886": {
              "sourceId": "node_1ddaa79a143043b7a16555365837dfaf",
              "targetId": "node_9cada41a844e413480b8b123612ce886",
              "data": {}
            },
            "node_9cada41a844e413480b8b123612ce886-node_60c40de7f2d14ca3a8ff4e4d451d03ff": {
              "sourceId": "node_9cada41a844e413480b8b123612ce886",
              "targetId": "node_60c40de7f2d14ca3a8ff4e4d451d03ff",
              "data": {}
            },
            "node_60c40de7f2d14ca3a8ff4e4d451d03ff-node_95788a044d17432da008aca0741bfef6": {
              "sourceId": "node_60c40de7f2d14ca3a8ff4e4d451d03ff",
              "targetId": "node_95788a044d17432da008aca0741bfef6",
              "data": {}
            },
            "node_4c229cff2bcb4761925dc38921b07196-node_a13ce2f4c5534bbc882caecdd529fd24": {
              "sourceId": "node_4c229cff2bcb4761925dc38921b07196",
              "targetId": "node_a13ce2f4c5534bbc882caecdd529fd24",
              "data": {}
            },
            "node_a13ce2f4c5534bbc882caecdd529fd24-node_9c01a43526094dc6af6503d0de2bf3e4": {
              "sourceId": "node_a13ce2f4c5534bbc882caecdd529fd24",
              "targetId": "node_9c01a43526094dc6af6503d0de2bf3e4",
              "data": {}
            },
            "node_9c01a43526094dc6af6503d0de2bf3e4-node_3369c66f19e9472bb5ff9a28ddec4126": {
              "sourceId": "node_9c01a43526094dc6af6503d0de2bf3e4",
              "targetId": "node_3369c66f19e9472bb5ff9a28ddec4126",
              "data": {}
            },
            "node_3369c66f19e9472bb5ff9a28ddec4126-node_360420d2cba549388811065aae9b71c6": {
              "sourceId": "node_3369c66f19e9472bb5ff9a28ddec4126",
              "targetId": "node_360420d2cba549388811065aae9b71c6",
              "data": {}
            },
            "node_360420d2cba549388811065aae9b71c6-node_a731d7af9a3f4b61ad39ca7caedadcfa": {
              "sourceId": "node_360420d2cba549388811065aae9b71c6",
              "targetId": "node_a731d7af9a3f4b61ad39ca7caedadcfa",
              "data": {}
            },
            "node_1e7f08a864ae4a7786516ba81ca5de9b-node_b700a703470f41a0841c5f44d66d602b": {
              "sourceId": "node_1e7f08a864ae4a7786516ba81ca5de9b",
              "targetId": "node_b700a703470f41a0841c5f44d66d602b",
              "data": {}
            },
            "node_21ecca74c8d442fe84a6bd214bd5471a-node_9730326262d0457d8b68d5bee1751c3a": {
              "sourceId": "node_21ecca74c8d442fe84a6bd214bd5471a",
              "targetId": "node_9730326262d0457d8b68d5bee1751c3a",
              "data": {}
            },
            "node_9730326262d0457d8b68d5bee1751c3a-node_1e7f08a864ae4a7786516ba81ca5de9b": {
              "sourceId": "node_9730326262d0457d8b68d5bee1751c3a",
              "targetId": "node_1e7f08a864ae4a7786516ba81ca5de9b",
              "data": {}
            },
            "node_a6602538dcfd4aafa5706c428d329ea2-node_7120fb2c37da45f5babdbd6bf8188dbb": {
              "sourceId": "node_a6602538dcfd4aafa5706c428d329ea2",
              "targetId": "node_7120fb2c37da45f5babdbd6bf8188dbb",
              "data": {}
            },
            "node_a731d7af9a3f4b61ad39ca7caedadcfa-node_6af0360dc0d342e5b0fd06ab056ee026": {
              "sourceId": "node_a731d7af9a3f4b61ad39ca7caedadcfa",
              "targetId": "node_6af0360dc0d342e5b0fd06ab056ee026",
              "data": {}
            },
            "node_6af0360dc0d342e5b0fd06ab056ee026-node_7f4c3170f6e4460aa35e57dc5d2190bb": {
              "sourceId": "node_6af0360dc0d342e5b0fd06ab056ee026",
              "targetId": "node_7f4c3170f6e4460aa35e57dc5d2190bb",
              "data": {}
            },
            "node_7f4c3170f6e4460aa35e57dc5d2190bb-node_68f2ffe1bcdc43f6a31f42f33e5a107b": {
              "sourceId": "node_7f4c3170f6e4460aa35e57dc5d2190bb",
              "targetId": "node_68f2ffe1bcdc43f6a31f42f33e5a107b",
              "data": {}
            },
            "node_68f2ffe1bcdc43f6a31f42f33e5a107b-node_e404cfa194df412b881651fff870eb21": {
              "sourceId": "node_68f2ffe1bcdc43f6a31f42f33e5a107b",
              "targetId": "node_e404cfa194df412b881651fff870eb21",
              "data": {}
            },
            "node_e404cfa194df412b881651fff870eb21-node_22348d01fcd84e73b1a2a7c3ffb0e9ab": {
              "sourceId": "node_e404cfa194df412b881651fff870eb21",
              "targetId": "node_22348d01fcd84e73b1a2a7c3ffb0e9ab",
              "data": {}
            },
            "node_05345ae0b0a7479a8788aca3d161df31-node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5": {
              "sourceId": "node_05345ae0b0a7479a8788aca3d161df31",
              "targetId": "node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5",
              "data": {}
            },
            "node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5-node_bcef958ed68243a1a4f4c06b198e1f98": {
              "sourceId": "node_6e4ffe5a1c2e4859881f2f0ef6ecc9e5",
              "targetId": "node_bcef958ed68243a1a4f4c06b198e1f98",
              "data": {}
            },
            "node_bcef958ed68243a1a4f4c06b198e1f98-node_cea24318a43a4b8db6f5f5f626c66381": {
              "sourceId": "node_bcef958ed68243a1a4f4c06b198e1f98",
              "targetId": "node_cea24318a43a4b8db6f5f5f626c66381",
              "data": {}
            },
            "node_cea24318a43a4b8db6f5f5f626c66381-node_16ebcd4308d348b8bfe4f77a627bc0d3": {
              "sourceId": "node_cea24318a43a4b8db6f5f5f626c66381",
              "targetId": "node_16ebcd4308d348b8bfe4f77a627bc0d3",
              "data": {}
            },
            "node_c05a352f76a0459b917fc9c36aaddc2b-node_20b60d8df34c4ffb9c9e5eb5600cc35b": {
              "sourceId": "node_c05a352f76a0459b917fc9c36aaddc2b",
              "targetId": "node_20b60d8df34c4ffb9c9e5eb5600cc35b",
              "data": {}
            },
            "node_20b60d8df34c4ffb9c9e5eb5600cc35b-node_c6e470f2d4a7425c8a0c3cbd01e86c14": {
              "sourceId": "node_20b60d8df34c4ffb9c9e5eb5600cc35b",
              "targetId": "node_c6e470f2d4a7425c8a0c3cbd01e86c14",
              "data": {}
            },
            "node_6f2fb40699e94145b8e1ab2569aed03f-node_db065d7360e843f18a05eb606d74f70d": {
              "sourceId": "node_6f2fb40699e94145b8e1ab2569aed03f",
              "targetId": "node_db065d7360e843f18a05eb606d74f70d",
              "data": {}
            },
            "node_db065d7360e843f18a05eb606d74f70d-node_7065d149d9274062afa9d5ec6aea0363": {
              "sourceId": "node_db065d7360e843f18a05eb606d74f70d",
              "targetId": "node_7065d149d9274062afa9d5ec6aea0363",
              "data": {}
            },
            "node_95788a044d17432da008aca0741bfef6-node_cd158e6724804723bc5b93c411861b47": {
              "sourceId": "node_95788a044d17432da008aca0741bfef6",
              "targetId": "node_cd158e6724804723bc5b93c411861b47",
              "data": {}
            },
            "node_cd158e6724804723bc5b93c411861b47-node_2283fadf2d9b4e428580fb4244b6fffc": {
              "sourceId": "node_cd158e6724804723bc5b93c411861b47",
              "targetId": "node_2283fadf2d9b4e428580fb4244b6fffc",
              "data": {}
            },
            "node_22348d01fcd84e73b1a2a7c3ffb0e9ab-node_8d1b7a7d04724dc9b5dbd35c252cd100": {
              "sourceId": "node_22348d01fcd84e73b1a2a7c3ffb0e9ab",
              "targetId": "node_8d1b7a7d04724dc9b5dbd35c252cd100",
              "data": {}
            },
            "node_8d1b7a7d04724dc9b5dbd35c252cd100-node_05345ae0b0a7479a8788aca3d161df31": {
              "sourceId": "node_8d1b7a7d04724dc9b5dbd35c252cd100",
              "targetId": "node_05345ae0b0a7479a8788aca3d161df31",
              "data": {}
            },
            "node_16ebcd4308d348b8bfe4f77a627bc0d3-node_743f79f442f749e99466098cc2f2e43e": {
              "sourceId": "node_16ebcd4308d348b8bfe4f77a627bc0d3",
              "targetId": "node_743f79f442f749e99466098cc2f2e43e",
              "data": {}
            },
            "node_743f79f442f749e99466098cc2f2e43e-node_c05a352f76a0459b917fc9c36aaddc2b": {
              "sourceId": "node_743f79f442f749e99466098cc2f2e43e",
              "targetId": "node_c05a352f76a0459b917fc9c36aaddc2b",
              "data": {}
            },
            "node_1704fbba45fb4ba78b05b00a4cf154f1-node_c4324a57351c4d1b8a15430a140c681d": {
              "sourceId": "node_1704fbba45fb4ba78b05b00a4cf154f1",
              "targetId": "node_c4324a57351c4d1b8a15430a140c681d",
              "data": {}
            },
            "node_c4324a57351c4d1b8a15430a140c681d-node_4c229cff2bcb4761925dc38921b07196": {
              "sourceId": "node_c4324a57351c4d1b8a15430a140c681d",
              "targetId": "node_4c229cff2bcb4761925dc38921b07196",
              "data": {}
            },
            "node_c6e470f2d4a7425c8a0c3cbd01e86c14-node_9e8478cc21474b8a87bb53d9fbc0c3fc": {
              "sourceId": "node_c6e470f2d4a7425c8a0c3cbd01e86c14",
              "targetId": "node_9e8478cc21474b8a87bb53d9fbc0c3fc",
              "data": {}
            }
          },
          "name": "storylet10",
          "id": "storylet_5b589f12f7bb462c907b4dec5acb74af",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_0b0a9762dc414370b82f85779f6e12c1": {
              "id": "node_0b0a9762dc414370b82f85779f6e12c1",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "laisha_talk1"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_ca0f2525348e459aadd7796e9f32a4b5": {
              "id": "node_ca0f2525348e459aadd7796e9f32a4b5",
              "data": {
                "type": "sentence",
                "content": "content_80b1e808bdb5493da682b1f512ea0d22",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_a2d8769b70f44ebaa718866e5d1f286c": {
              "id": "node_a2d8769b70f44ebaa718866e5d1f286c",
              "data": {
                "type": "sentence",
                "content": "content_776e8372be924c528a85a9d9f8e2efff",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_b0a4b396d70e4c88a52e6037f22310c0": {
              "id": "node_b0a4b396d70e4c88a52e6037f22310c0",
              "data": {
                "type": "sentence",
                "content": "content_3aafff52a0cc4fd1a1f8ff819b494136",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_efbdd22b851345f4bef2f8705fa007d3": {
              "id": "node_efbdd22b851345f4bef2f8705fa007d3",
              "data": {
                "type": "sentence",
                "content": "content_eecc5a6fd38f4fa2b47814b6d88c834b",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8bad9f2d404043cfa10461623bc83b69": {
              "id": "node_8bad9f2d404043cfa10461623bc83b69",
              "data": {
                "type": "sentence",
                "content": "content_7874fc872dd0439d83d1be4010c9da90",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3932e85454334c7c8766cf773e55d618": {
              "id": "node_3932e85454334c7c8766cf773e55d618",
              "data": {
                "type": "sentence",
                "content": "content_6a2d9741b19f47a993a4715ee6cb7793",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_258f719544554b3b8a9d1e1afc9663ca": {
              "id": "node_258f719544554b3b8a9d1e1afc9663ca",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen()"
                  }
                }
              }
            },
            "node_6e08faed791841258e5b641aa7c57f5b": {
              "id": "node_6e08faed791841258e5b641aa7c57f5b",
              "data": {
                "type": "sentence",
                "content": "content_3cdc0ad5b9d64321856d4b784034b20e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_086f8c49649845caa92898c1bd0aa54d": {
              "id": "node_086f8c49649845caa92898c1bd0aa54d",
              "data": {
                "type": "sentence",
                "content": "content_9910cf78cc344540a435c674c27c26ab",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_40c9ce25b510491a8382cffc7fe82ba8": {
              "id": "node_40c9ce25b510491a8382cffc7fe82ba8",
              "data": {
                "type": "sentence",
                "content": "content_20c19fcd16004d37a861a640078be2bc",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_6d8a1d65f94547b0826e5380de980c6f": {
              "id": "node_6d8a1d65f94547b0826e5380de980c6f",
              "data": {
                "type": "sentence",
                "content": "content_3727c42c73fb4cc98229ac4b0ad6d673",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_844ef1319dcb451790aaba62b7bbd938": {
              "id": "node_844ef1319dcb451790aaba62b7bbd938",
              "data": {
                "type": "sentence",
                "content": "content_fdc96fe13086491097800472a617f558",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_3b850d8c548a4a299ffc997e8671a8c6": {
              "id": "node_3b850d8c548a4a299ffc997e8671a8c6",
              "data": {
                "type": "sentence",
                "content": "content_6c75ebb3c84c40c9aa587e970cdb0c9c",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_8292f479bbbf4b6885eb8767dd209489": {
              "id": "node_8292f479bbbf4b6885eb8767dd209489",
              "data": {
                "type": "sentence",
                "content": "content_dffc48c5d8b747e9a8877e7247686ca1",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_29e9eb5f29774876a9c34545bb322fb0": {
              "id": "node_29e9eb5f29774876a9c34545bb322fb0",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "context.character_map[\"sheng_qi\"].direction = \"up\"\r\ncontext.character_map[\"sheng_qi\"].set_state(\"idle\")\r\ncontext.character_map[\"sheng_qi\"].position = Vector2(936,456)\r\ncontext.character_map[\"joey\"].direction = \"right\"\r\ncontext.character_map[\"joey\"].set_state(\"idle\")\r\ncontext.character_map[\"joey\"].position = Vector2(864,372)\r\ncontext.character_map[\"laisha\"].direction = \"left\"\r\ncontext.character_map[\"laisha\"].set_state(\"idle\")\r\ncontext.character_map[\"laisha\"].position = Vector2(1016,372)"
                  }
                }
              }
            },
            "node_f25e38362dee43c7803cb345690b31bd": {
              "id": "node_f25e38362dee43c7803cb345690b31bd",
              "data": {
                "type": "custom",
                "onJumpProcess": "",
                "customType": "action",
                "enableConditions": [],
                "extraData": {
                  "type": "custom",
                  "process": {
                    "fields": [],
                    "value": "await context.root.blackscreen(true)\r\nSceneChanger.change_scene(Constants.SCENES.HOUSE_NORMAL)"
                  }
                }
              }
            }
          },
          "links": {
            "node_ca0f2525348e459aadd7796e9f32a4b5-node_a2d8769b70f44ebaa718866e5d1f286c": {
              "sourceId": "node_ca0f2525348e459aadd7796e9f32a4b5",
              "targetId": "node_a2d8769b70f44ebaa718866e5d1f286c",
              "data": {}
            },
            "node_a2d8769b70f44ebaa718866e5d1f286c-node_b0a4b396d70e4c88a52e6037f22310c0": {
              "sourceId": "node_a2d8769b70f44ebaa718866e5d1f286c",
              "targetId": "node_b0a4b396d70e4c88a52e6037f22310c0",
              "data": {}
            },
            "node_b0a4b396d70e4c88a52e6037f22310c0-node_efbdd22b851345f4bef2f8705fa007d3": {
              "sourceId": "node_b0a4b396d70e4c88a52e6037f22310c0",
              "targetId": "node_efbdd22b851345f4bef2f8705fa007d3",
              "data": {}
            },
            "node_efbdd22b851345f4bef2f8705fa007d3-node_8bad9f2d404043cfa10461623bc83b69": {
              "sourceId": "node_efbdd22b851345f4bef2f8705fa007d3",
              "targetId": "node_8bad9f2d404043cfa10461623bc83b69",
              "data": {}
            },
            "node_8bad9f2d404043cfa10461623bc83b69-node_3932e85454334c7c8766cf773e55d618": {
              "sourceId": "node_8bad9f2d404043cfa10461623bc83b69",
              "targetId": "node_3932e85454334c7c8766cf773e55d618",
              "data": {}
            },
            "node_3932e85454334c7c8766cf773e55d618-node_258f719544554b3b8a9d1e1afc9663ca": {
              "sourceId": "node_3932e85454334c7c8766cf773e55d618",
              "targetId": "node_258f719544554b3b8a9d1e1afc9663ca",
              "data": {}
            },
            "node_258f719544554b3b8a9d1e1afc9663ca-node_6e08faed791841258e5b641aa7c57f5b": {
              "sourceId": "node_258f719544554b3b8a9d1e1afc9663ca",
              "targetId": "node_6e08faed791841258e5b641aa7c57f5b",
              "data": {}
            },
            "node_6e08faed791841258e5b641aa7c57f5b-node_086f8c49649845caa92898c1bd0aa54d": {
              "sourceId": "node_6e08faed791841258e5b641aa7c57f5b",
              "targetId": "node_086f8c49649845caa92898c1bd0aa54d",
              "data": {}
            },
            "node_086f8c49649845caa92898c1bd0aa54d-node_40c9ce25b510491a8382cffc7fe82ba8": {
              "sourceId": "node_086f8c49649845caa92898c1bd0aa54d",
              "targetId": "node_40c9ce25b510491a8382cffc7fe82ba8",
              "data": {}
            },
            "node_40c9ce25b510491a8382cffc7fe82ba8-node_6d8a1d65f94547b0826e5380de980c6f": {
              "sourceId": "node_40c9ce25b510491a8382cffc7fe82ba8",
              "targetId": "node_6d8a1d65f94547b0826e5380de980c6f",
              "data": {}
            },
            "node_6d8a1d65f94547b0826e5380de980c6f-node_844ef1319dcb451790aaba62b7bbd938": {
              "sourceId": "node_6d8a1d65f94547b0826e5380de980c6f",
              "targetId": "node_844ef1319dcb451790aaba62b7bbd938",
              "data": {}
            },
            "node_844ef1319dcb451790aaba62b7bbd938-node_3b850d8c548a4a299ffc997e8671a8c6": {
              "sourceId": "node_844ef1319dcb451790aaba62b7bbd938",
              "targetId": "node_3b850d8c548a4a299ffc997e8671a8c6",
              "data": {}
            },
            "node_3b850d8c548a4a299ffc997e8671a8c6-node_8292f479bbbf4b6885eb8767dd209489": {
              "sourceId": "node_3b850d8c548a4a299ffc997e8671a8c6",
              "targetId": "node_8292f479bbbf4b6885eb8767dd209489",
              "data": {}
            },
            "node_0b0a9762dc414370b82f85779f6e12c1-node_29e9eb5f29774876a9c34545bb322fb0": {
              "sourceId": "node_0b0a9762dc414370b82f85779f6e12c1",
              "targetId": "node_29e9eb5f29774876a9c34545bb322fb0",
              "data": {}
            },
            "node_29e9eb5f29774876a9c34545bb322fb0-node_ca0f2525348e459aadd7796e9f32a4b5": {
              "sourceId": "node_29e9eb5f29774876a9c34545bb322fb0",
              "targetId": "node_ca0f2525348e459aadd7796e9f32a4b5",
              "data": {}
            },
            "node_8292f479bbbf4b6885eb8767dd209489-node_f25e38362dee43c7803cb345690b31bd": {
              "sourceId": "node_8292f479bbbf4b6885eb8767dd209489",
              "targetId": "node_f25e38362dee43c7803cb345690b31bd",
              "data": {}
            }
          },
          "name": "storylet11",
          "id": "storylet_ab9800ba9c1b4ad8837c59869d93bed9",
          "conditions": []
        }
      },
      {
        "groupId": "group_68ddfe9f72a140bbbdb8175879eae4cd",
        "data": {
          "nodes": {
            "node_2e9d805b62204cfc98e8da36885fbfd8": {
              "id": "node_2e9d805b62204cfc98e8da36885fbfd8",
              "data": {
                "type": "root",
                "enableConditions": [],
                "extraData": {
                  "storylet_id": "day1_end"
                },
                "onJumpProcess": "",
                "afterJumpProcess": ""
              }
            },
            "node_ca717958291b4ac3a18d7c93f1dd52db": {
              "id": "node_ca717958291b4ac3a18d7c93f1dd52db",
              "data": {
                "type": "sentence",
                "content": "content_218fc63fbce646efa047ac5b74d61053",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_63994823b6504eac9c038559be86d66e": {
              "id": "node_63994823b6504eac9c038559be86d66e",
              "data": {
                "type": "sentence",
                "content": "content_1ec21435e8e146f7b1053f66dca9ec4e",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "laisha",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9482bd27bb1c447da526bec334fffa02": {
              "id": "node_9482bd27bb1c447da526bec334fffa02",
              "data": {
                "type": "sentence",
                "content": "content_d9163281debb4ab9aef189911a6a3be5",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_7e4321c03a9142e7a5a7a2dcd8132cfb": {
              "id": "node_7e4321c03a9142e7a5a7a2dcd8132cfb",
              "data": {
                "type": "sentence",
                "content": "content_9307066300294c27bbf8f7c2e0258399",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "sheng_qi",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            },
            "node_9d13b85d32064b33bcdcc6a6a2a168ca": {
              "id": "node_9d13b85d32064b33bcdcc6a6a2a168ca",
              "data": {
                "type": "sentence",
                "content": "content_64ce976f9d984ed5ac1ed2fac43c8fd2",
                "contentSpeed": {},
                "enableConditions": [],
                "onJumpProcess": "",
                "extraData": {},
                "actor": "joey",
                "actorPortrait": "normal",
                "actorDirection": "left"
              }
            }
          },
          "links": {
            "node_2e9d805b62204cfc98e8da36885fbfd8-node_ca717958291b4ac3a18d7c93f1dd52db": {
              "sourceId": "node_2e9d805b62204cfc98e8da36885fbfd8",
              "targetId": "node_ca717958291b4ac3a18d7c93f1dd52db",
              "data": {}
            },
            "node_ca717958291b4ac3a18d7c93f1dd52db-node_63994823b6504eac9c038559be86d66e": {
              "sourceId": "node_ca717958291b4ac3a18d7c93f1dd52db",
              "targetId": "node_63994823b6504eac9c038559be86d66e",
              "data": {}
            },
            "node_63994823b6504eac9c038559be86d66e-node_9482bd27bb1c447da526bec334fffa02": {
              "sourceId": "node_63994823b6504eac9c038559be86d66e",
              "targetId": "node_9482bd27bb1c447da526bec334fffa02",
              "data": {}
            },
            "node_9482bd27bb1c447da526bec334fffa02-node_9d13b85d32064b33bcdcc6a6a2a168ca": {
              "sourceId": "node_9482bd27bb1c447da526bec334fffa02",
              "targetId": "node_9d13b85d32064b33bcdcc6a6a2a168ca",
              "data": {}
            },
            "node_9d13b85d32064b33bcdcc6a6a2a168ca-node_7e4321c03a9142e7a5a7a2dcd8132cfb": {
              "sourceId": "node_9d13b85d32064b33bcdcc6a6a2a168ca",
              "targetId": "node_7e4321c03a9142e7a5a7a2dcd8132cfb",
              "data": {}
            }
          },
          "name": "storylet12",
          "id": "storylet_f70912d0cb71475d9e9dbd3c7391cdae",
          "conditions": []
        }
      }
    ]
  },
  "projectSettings": {
    "i18n": [
      "zh",
      "en"
    ],
    "actors": [
      {
        "id": "sheng_qi",
        "name": "actor_name_973a7afc8cfa4407877a2b009026099d",
        "portraits": [
          {
            "id": "normal",
            "pic": "C:\\game_projects\\snow-mountain-14-days\\assets\\man.png"
          }
        ]
      },
      {
        "id": "laisha",
        "name": "actor_name_b33888a32450404f9ae6619696aac908",
        "portraits": [
          {
            "id": "normal",
            "pic": "C:\\game_projects\\snow-mountain-14-days\\assets\\woman.png"
          }
        ]
      },
      {
        "id": "joey",
        "name": "actor_name_244079313ea94605985a61f5f18b331c",
        "portraits": [
          {
            "id": "normal",
            "pic": "C:\\game_projects\\snow-mountain-14-days\\assets\\child.png"
          }
        ]
      },
      {
        "id": "center_bottom",
        "name": "actor_name_3048a128f2c843129e4f76202985f269",
        "portraits": []
      }
    ],
    "extraDataConfig": {
      "root": {
        "type": "object",
        "fields": {
          "storylet_id": {
            "name": "storylet_id",
            "config": {
              "colSpan": 12,
              "defaultValue": "",
              "type": "singleline"
            },
            "type": "string"
          }
        },
        "config": {
          "colSpan": 12,
          "initialExpand": true,
          "summary": "{{___key}}"
        }
      },
      "sentence": {
        "type": "object",
        "fields": {},
        "config": {
          "colSpan": 12,
          "initialExpand": true,
          "summary": "{{___key}}"
        }
      },
      "branch": {
        "type": "object",
        "fields": {},
        "config": {
          "colSpan": 12,
          "initialExpand": true,
          "summary": "{{___key}}"
        }
      }
    },
    "customNodeConfig": [
      {
        "type": "empty",
        "schema": {
          "type": "object",
          "fields": {},
          "config": {
            "colSpan": 12,
            "initialExpand": true,
            "summary": "{{___key}}"
          }
        }
      },
      {
        "type": "action",
        "schema": {
          "type": "object",
          "fields": {
            "type": {
              "name": "type",
              "config": {
                "colSpan": 4,
                "options": [
                  {
                    "label": "custom",
                    "value": "custom"
                  },
                  {
                    "label": "jump_to_node",
                    "value": "jump_to_node"
                  },
                  {
                    "label": "jump_to_storylet",
                    "value": "jump_to_storylet"
                  }
                ],
                "defaultValue": "custom"
              },
              "type": "select"
            },
            "process": {
              "name": "process",
              "config": {
                "colSpan": 12,
                "defaultValue": "",
                "type": "code",
                "enableWhen": "(v) => v.type === 'custom'"
              },
              "type": "string"
            },
            "jump_type": {
              "name": "jump_type",
              "config": {
                "colSpan": 4,
                "options": [
                  {
                    "label": "direct",
                    "value": "direct"
                  },
                  {
                    "label": "code",
                    "value": "code"
                  }
                ],
                "defaultValue": "direct",
                "enableWhen": "(v) => (v.type === 'jump_to_node' || v.type === 'jump_to_storylet')"
              },
              "type": "select"
            },
            "target_node_id": {
              "name": "target_node_id",
              "config": {
                "colSpan": 4,
                "defaultValue": "",
                "type": "singleline",
                "enableWhen": "(v) => v.type === 'jump_to_node' && v.jump_type === 'direct'",
                "needI18n": false
              },
              "type": "string"
            },
            "get_target_node_id": {
              "name": "get_target_node_id",
              "config": {
                "colSpan": 12,
                "defaultValue": "",
                "type": "code",
                "enableWhen": "(v) => v.type === 'jump_to_node' && v.jump_type === 'code'"
              },
              "type": "string"
            },
            "target_storylet_id": {
              "name": "target_storylet_id",
              "config": {
                "colSpan": 4,
                "defaultValue": "",
                "type": "singleline",
                "enableWhen": "(v) => v.type === 'jump_to_storylet' && v.jump_type === 'direct'",
                "needI18n": false
              },
              "type": "string"
            },
            "get_target_storylet_id": {
              "name": "get_target_storylet_id",
              "config": {
                "colSpan": 12,
                "defaultValue": "",
                "type": "code",
                "enableWhen": "(v) => v.type === 'jump_to_storylet' && v.jump_type === 'code'"
              },
              "type": "string"
            }
          },
          "config": {
            "colSpan": 12,
            "initialExpand": true,
            "summary": "{{___key}}{{type}}"
          }
        }
      }
    ]
  }
}