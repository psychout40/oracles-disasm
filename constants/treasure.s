; The first $20 treasures correspond to items (see constants/itemTypes.s). Beyond that,
; they differ.

; Item indices from $00-$1f can be used as inventory items; ones above that can't be.
.define NUM_INVENTORY_ITEMS	$20


.enum 0

	TREASURE_NONE			db ; $00
	TREASURE_SHIELD			db ; $01
	TREASURE_PUNCH			db ; $02 ; Set by default on the file
	TREASURE_BOMBS			db ; $03
	TREASURE_CANE_OF_SOMARIA	db ; $04
	TREASURE_SWORD			db ; $05
	TREASURE_BOOMERANG		db ; $06
	TREASURE_ROD_OF_SEASONS		db ; $07
	TREASURE_MAGNET_GLOVES		db ; $08
	TREASURE_SWITCH_HOOK_HELPER	db ; $09 ; Probably not an actual treasure
	TREASURE_SWITCH_HOOK		db ; $0a
	TREASURE_SWITCH_HOOK_CHAIN	db ; $0b ; Probably not an actual treasure
	TREASURE_BIGGORON_SWORD		db ; $0c
	TREASURE_BOMBCHUS		db ; $0d
	TREASURE_FLUTE			db ; $0e
	TREASURE_SHOOTER		db ; $0f
	TREASURE_10			db ; $10
	TREASURE_HARP			db ; $11
	TREASURE_12			db ; $12
	TREASURE_SLINGSHOT		db ; $13
	TREASURE_14			db ; $14
	TREASURE_SHOVEL			db ; $15
	TREASURE_BRACELET		db ; $16
	TREASURE_FEATHER		db ; $17
	TREASURE_18			db ; $18
	TREASURE_SEED_SATCHEL		db ; $19 ; When set, you're allowed to pick seeds from trees
	TREASURE_1a			db ; $1a
	TREASURE_1b			db ; $1b
	TREASURE_1c			db ; $1c
	TREASURE_MINECART_COLLISION	db ; $1d ; Probably not an actual treasure
	TREASURE_FOOLS_ORE		db ; $1e
	TREASURE_1f			db ; $1f

	TREASURE_EMBER_SEEDS		db ; $20
	TREASURE_SCENT_SEEDS		db ; $21
	TREASURE_PEGASUS_SEEDS		db ; $22
	TREASURE_GALE_SEEDS		db ; $23
	TREASURE_MYSTERY_SEEDS		db ; $24
	TREASURE_TUNE_OF_ECHOES		db ; $25
	TREASURE_TUNE_OF_CURRENTS	db ; $26
	TREASURE_TUNE_OF_AGES		db ; $27
	TREASURE_RUPEES			db ; $28
	TREASURE_HEART_REFILL		db ; $29
	TREASURE_HEART_CONTAINER	db ; $2a
	TREASURE_HEART_PIECE		db ; $2b
	TREASURE_RING_BOX		db ; $2c
	TREASURE_RING			db ; $2d ; Once the flag is set, you see the unappraised ring counter
	TREASURE_FLIPPERS		db ; $2e
	TREASURE_POTION			db ; $2f
	TREASURE_SMALL_KEY		db ; $30
	TREASURE_BOSS_KEY		db ; $31
	TREASURE_COMPASS		db ; $32
	TREASURE_MAP			db ; $33
	TREASURE_GASHA_SEED		db ; $34
	TREASURE_35			db ; $35
	TREASURE_MAKU_SEED		db ; $36
	TREASURE_ORE_CHUNKS		db ; $37
	TREASURE_38			db ; $38
	TREASURE_39			db ; $39
	TREASURE_3a			db ; $3a
	TREASURE_3b			db ; $3b
	TREASURE_3c			db ; $3c
	TREASURE_3d			db ; $3d
	TREASURE_3e			db ; $3e
	TREASURE_3f			db ; $3f
	TREASURE_ESSENCE		db ; $40
	TREASURE_TRADEITEM		db ; $41

.ifdef ROM_AGES

	TREASURE_FIRST_KEY		.db

	TREASURE_GRAVEYARD_KEY		db ; $42
	TREASURE_CROWN_KEY		db ; $43
	TREASURE_OLD_MERMAID_KEY	db ; $44
	TREASURE_MERMAID_KEY		db ; $45
	TREASURE_LIBRARY_KEY		db ; $46
	TREASURE_47			db ; $47
	TREASURE_RICKY_GLOVES		db ; $48
	TREASURE_BOMB_FLOWER		db ; $49
	TREASURE_MERMAID_SUIT		db ; $4a
	TREASURE_SLATE			db ; $4b
	TREASURE_TUNI_NUT		db ; $4c
	TREASURE_SCENT_SEEDLING		db ; $4d
	TREASURE_ZORA_SCALE		db ; $4e
	TREASURE_TOKAY_EYEBALL		db ; $4f
	TREASURE_EMPTY_BOTTLE		db ; $50: unused? (similar to fairy powder)
	TREASURE_FAIRY_POWDER		db ; $51
	TREASURE_CHEVAL_ROPE		db ; $52
	TREASURE_MEMBERS_CARD		db ; $53
	TREASURE_ISLAND_CHART		db ; $54
	TREASURE_BOOK_OF_SEALS		db ; $55
	TREASURE_56			db ; $56
	TREASURE_57			db ; $57
	TREASURE_58			db ; $58: relates to bomb flower?
	TREASURE_GORON_LETTER		db ; $59
	TREASURE_LAVA_JUICE		db ; $5a
	TREASURE_BROTHER_EMBLEM		db ; $5b
	TREASURE_GORON_VASE		db ; $5c
	TREASURE_GORONADE		db ; $5d
	TREASURE_ROCK_BRISKET		db ; $5e
	TREASURE_5f			db ; $5f

.else; ROM_SEASONS

	TREASURE_FIRST_KEY		.db

	TREASURE_GNARLED_KEY		db ; $42
	TREASURE_FLOODGATE_KEY		db ; $43
	TREASURE_DRAGON_KEY		db ; $44
	TREASURE_STAR_ORE		db ; $45
	TREASURE_RIBBON			db ; $46
	TREASURE_SPRING_BANANA		db ; $47
	TREASURE_RICKY_GLOVES		db ; $48
	TREASURE_BOMB_FLOWER		db ; $49
	TREASURE_PIRATES_BELL		db ; $4a
	TREASURE_TREASURE_MAP		db ; $4b
	TREASURE_ROUND_JEWEL		db ; $4c
	TREASURE_PYRAMID_JEWEL		db ; $4d
	TREASURE_SQUARE_JEWEL		db ; $4e
	TREASURE_X_SHAPED_JEWEL		db ; $4f
	TREASURE_RED_ORE		db ; $50
	TREASURE_BLUE_ORE		db ; $51
	TREASURE_HARD_ORE		db ; $52
	TREASURE_MEMBERS_CARD		db ; $53
	TREASURE_MASTERS_PLAQUE		db ; $54
	TREASURE_55			db ; $55
	TREASURE_56			db ; $56
	TREASURE_57			db ; $57
	TREASURE_58			db ; $58: relates to bomb flower?

	; The remainder appear as seeds in seed satchel/slingshot, but that probably
	; doesn't mean anything. These may not be valid treasures.
	TREASURE_59			db ; $59
	TREASURE_5a			db ; $5a
	TREASURE_5b			db ; $5b
	TREASURE_5c			db ; $5c
	TREASURE_5d			db ; $5d
	TREASURE_5e			db ; $5e
	TREASURE_5f			db ; $5f

.endif ; ROM_SEASONS


	; Do these behave the same in seasons?
	TREASURE_60			db ; $60
	TREASURE_BOMB_UPGRADE		db ; $61
	TREASURE_SATCHEL_UPGRADE	db ; $62
	TREASURE_63			db ; $63
	TREASURE_64			db ; $64
	TREASURE_65			db ; $65
	TREASURE_66			db ; $66
	TREASURE_67			db ; $67
.ende



.ifdef ROM_AGES
; Treasure "subids" for INTERACID_TREASURE (corresponds to data/treasureObjectData.s)

.enum TREASURE_NONE<<8 ; $00
	TREASURE_NONE_SUBID_00	db
.ende

.enum TREASURE_SHIELD<<8 ; $01
	TREASURE_SHIELD_SUBID_00	db
.ende

.enum TREASURE_PUNCH<<8 ; $02
	TREASURE_PUNCH_SUBID_00	db
.ende

.enum TREASURE_BOMBS<<8 ; $03
	TREASURE_BOMBS_SUBID_00	db
.ende

.enum TREASURE_CANE_OF_SOMARIA<<8 ; $04
	TREASURE_CANE_OF_SOMARIA_SUBID_00	db
.ende

.enum TREASURE_SWORD<<8 ; $05
	TREASURE_SWORD_SUBID_00	db
	TREASURE_SWORD_SUBID_01	db
	TREASURE_SWORD_SUBID_02	db
	TREASURE_SWORD_SUBID_03	db
	TREASURE_SWORD_SUBID_04	db
	TREASURE_SWORD_SUBID_05	db
.ende

.enum TREASURE_BOOMERANG<<8 ; $06
	TREASURE_BOOMERANG_SUBID_00	db
.ende

.enum TREASURE_ROD_OF_SEASONS<<8 ; $07
	TREASURE_ROD_OF_SEASONS_SUBID_00	db
.ende

.enum TREASURE_MAGNET_GLOVES<<8 ; $08
	TREASURE_MAGNET_GLOVES_SUBID_00	db
.ende

.enum TREASURE_SWITCH_HOOK_HELPER<<8 ; $09
	TREASURE_SWITCH_HOOK_HELPER_SUBID_00	db
.ende

.enum TREASURE_SWITCH_HOOK<<8 ; $0a
	TREASURE_SWITCH_HOOK_SUBID_00	db
.ende

.enum TREASURE_SWITCH_HOOK_CHAIN<<8 ; $0b
	TREASURE_SWITCH_HOOK_CHAIN_SUBID_00	db
.ende

.enum TREASURE_BIGGORON_SWORD<<8 ; $0c
	TREASURE_BIGGORON_SWORD_SUBID_00	db
	TREASURE_BIGGORON_SWORD_SUBID_01	db
.ende

.enum TREASURE_BOMBCHUS<<8 ; $0d
	TREASURE_BOMBCHUS_SUBID_00	db
	TREASURE_BOMBCHUS_SUBID_01	db
.ende

.enum TREASURE_FLUTE<<8 ; $0e
	TREASURE_FLUTE_SUBID_00	db
.ende

.enum TREASURE_SHOOTER<<8 ; $0f
	TREASURE_SHOOTER_SUBID_00	db
.ende

.enum TREASURE_10<<8 ; $10
	TREASURE_10_SUBID_00	db
.ende

.enum TREASURE_HARP<<8 ; $11
	TREASURE_HARP_SUBID_00	db
.ende

.enum TREASURE_12<<8 ; $12
	TREASURE_12_SUBID_00	db
.ende

.enum TREASURE_SLINGSHOT<<8 ; $13
	TREASURE_SLINGSHOT_SUBID_00	db
.ende

.enum TREASURE_14<<8 ; $14
	TREASURE_14_SUBID_00	db
.ende

.enum TREASURE_SHOVEL<<8 ; $15
	TREASURE_SHOVEL_SUBID_00	db
.ende

.enum TREASURE_BRACELET<<8 ; $16
	TREASURE_BRACELET_SUBID_00	db
.ende

.enum TREASURE_FEATHER<<8 ; $17
	TREASURE_FEATHER_SUBID_00	db
.ende

.enum TREASURE_18<<8 ; $18
	TREASURE_18_SUBID_00	db
.ende

.enum TREASURE_SEED_SATCHEL<<8 ; $19
	TREASURE_SEED_SATCHEL_SUBID_00	db
.ende

.enum TREASURE_1a<<8 ; $1a
	TREASURE_1a_SUBID_00	db
.ende

.enum TREASURE_1b<<8 ; $1b
	TREASURE_1b_SUBID_00	db
.ende

.enum TREASURE_1c<<8 ; $1c
	TREASURE_1c_SUBID_00	db
.ende

.enum TREASURE_MINECART_COLLISION<<8 ; $1d
	TREASURE_MINECART_COLLISION_SUBID_00	db
.ende

.enum TREASURE_FOOLS_ORE<<8 ; $1e
	TREASURE_FOOLS_ORE_SUBID_00	db
.ende

.enum TREASURE_1f<<8 ; $1f
	TREASURE_1f_SUBID_00	db
.ende

.enum TREASURE_EMBER_SEEDS<<8 ; $20
	TREASURE_EMBER_SEEDS_SUBID_00	db
.ende

.enum TREASURE_SCENT_SEEDS<<8 ; $21
	TREASURE_SCENT_SEEDS_SUBID_00	db
.ende

.enum TREASURE_PEGASUS_SEEDS<<8 ; $22
	TREASURE_PEGASUS_SEEDS_SUBID_00	db
.ende

.enum TREASURE_GALE_SEEDS<<8 ; $23
	TREASURE_GALE_SEEDS_SUBID_00	db
.ende

.enum TREASURE_MYSTERY_SEEDS<<8 ; $24
	TREASURE_MYSTERY_SEEDS_SUBID_00	db
.ende

.enum TREASURE_TUNE_OF_ECHOES<<8 ; $25
	TREASURE_TUNE_OF_ECHOES_SUBID_00	db
.ende

.enum TREASURE_TUNE_OF_CURRENTS<<8 ; $26
	TREASURE_TUNE_OF_CURRENTS_SUBID_00	db
.ende

.enum TREASURE_TUNE_OF_AGES<<8 ; $27
	TREASURE_TUNE_OF_AGES_SUBID_00	db
.ende

.enum TREASURE_RUPEES<<8 ; $28
	TREASURE_RUPEES_SUBID_00	db
	TREASURE_RUPEES_SUBID_01	db
	TREASURE_RUPEES_SUBID_02	db
	TREASURE_RUPEES_SUBID_03	db
	TREASURE_RUPEES_SUBID_04	db
	TREASURE_RUPEES_SUBID_05	db
	TREASURE_RUPEES_SUBID_06	db
	TREASURE_RUPEES_SUBID_07	db
	TREASURE_RUPEES_SUBID_08	db
	TREASURE_RUPEES_SUBID_09	db
	TREASURE_RUPEES_SUBID_0a	db
	TREASURE_RUPEES_SUBID_0b	db
	TREASURE_RUPEES_SUBID_0c	db
	TREASURE_RUPEES_SUBID_0d	db
	TREASURE_RUPEES_SUBID_0e	db
	TREASURE_RUPEES_SUBID_0f	db
	TREASURE_RUPEES_SUBID_10	db
	TREASURE_RUPEES_SUBID_11	db
	TREASURE_RUPEES_SUBID_12	db
	TREASURE_RUPEES_SUBID_13	db
	TREASURE_RUPEES_SUBID_14	db
	TREASURE_RUPEES_SUBID_15	db
	TREASURE_RUPEES_SUBID_16	db
.ende

.enum TREASURE_HEART_REFILL<<8 ; $29
	TREASURE_HEART_REFILL_SUBID_00	db
.ende

.enum TREASURE_HEART_CONTAINER<<8 ; $2a
	TREASURE_HEART_CONTAINER_SUBID_00	db
	TREASURE_HEART_CONTAINER_SUBID_01	db
.ende

.enum TREASURE_HEART_PIECE<<8 ; $2b
	TREASURE_HEART_PIECE_SUBID_00	db
.ende

.enum TREASURE_RING_BOX<<8 ; $2c
	TREASURE_RING_BOX_SUBID_00	db
.ende

.enum TREASURE_RING<<8 ; $2d
	TREASURE_RING_SUBID_00	db
	TREASURE_RING_SUBID_01	db
	TREASURE_RING_SUBID_02	db
	TREASURE_RING_SUBID_03	db
	TREASURE_RING_SUBID_04	db
	TREASURE_RING_SUBID_05	db
	TREASURE_RING_SUBID_06	db
	TREASURE_RING_SUBID_07	db
	TREASURE_RING_SUBID_08	db
	TREASURE_RING_SUBID_09	db
	TREASURE_RING_SUBID_0a	db
	TREASURE_RING_SUBID_0b	db
	TREASURE_RING_SUBID_0c	db
	TREASURE_RING_SUBID_0d	db
	TREASURE_RING_SUBID_0e	db
	TREASURE_RING_SUBID_0f	db
	TREASURE_RING_SUBID_10	db
	TREASURE_RING_SUBID_11	db
	TREASURE_RING_SUBID_12	db
	TREASURE_RING_SUBID_13	db
	TREASURE_RING_SUBID_14	db
	TREASURE_RING_SUBID_15	db
	TREASURE_RING_SUBID_16	db
	TREASURE_RING_SUBID_17	db
	TREASURE_RING_SUBID_18	db
	TREASURE_RING_SUBID_19	db
	TREASURE_RING_SUBID_1a	db
	TREASURE_RING_SUBID_1b	db
	TREASURE_RING_SUBID_1c	db
	TREASURE_RING_SUBID_1d	db
	TREASURE_RING_SUBID_1e	db
	TREASURE_RING_SUBID_1f	db
	TREASURE_RING_SUBID_20	db
	TREASURE_RING_SUBID_21	db
	TREASURE_RING_SUBID_22	db
	TREASURE_RING_SUBID_23	db
	TREASURE_RING_SUBID_24	db
	TREASURE_RING_SUBID_25	db
	TREASURE_RING_SUBID_26	db
	TREASURE_RING_SUBID_27	db
	TREASURE_RING_SUBID_28	db
.ende

.enum TREASURE_FLIPPERS<<8 ; $2e
	TREASURE_FLIPPERS_SUBID_00	db
.ende

.enum TREASURE_POTION<<8 ; $2f
	TREASURE_POTION_SUBID_00	db
.ende

.enum TREASURE_SMALL_KEY<<8 ; $30
	TREASURE_SMALL_KEY_SUBID_00	db
.ende

.enum TREASURE_BOSS_KEY<<8 ; $31
	TREASURE_BOSS_KEY_SUBID_00	db
.ende

.enum TREASURE_COMPASS<<8 ; $32
	TREASURE_COMPASS_SUBID_00	db
.ende

.enum TREASURE_MAP<<8 ; $33
	TREASURE_MAP_SUBID_00	db
.ende

.enum TREASURE_GASHA_SEED<<8 ; $34
	TREASURE_GASHA_SEED_SUBID_00	db
	TREASURE_GASHA_SEED_SUBID_01	db
	TREASURE_GASHA_SEED_SUBID_02	db
	TREASURE_GASHA_SEED_SUBID_03	db
	TREASURE_GASHA_SEED_SUBID_04	db
	TREASURE_GASHA_SEED_SUBID_05	db
	TREASURE_GASHA_SEED_SUBID_06	db
	TREASURE_GASHA_SEED_SUBID_07	db
.ende

.enum TREASURE_35<<8 ; $35
	TREASURE_35_SUBID_00	db
.ende

.enum TREASURE_MAKU_SEED<<8 ; $36
	TREASURE_MAKU_SEED_SUBID_00	db
.ende

.enum TREASURE_ORE_CHUNKS<<8 ; $37
	TREASURE_ORE_CHUNKS_SUBID_00	db
.ende

.enum TREASURE_38<<8 ; $38
	TREASURE_38_SUBID_00	db
.ende

.enum TREASURE_39<<8 ; $39
	TREASURE_39_SUBID_00	db
.ende

.enum TREASURE_3a<<8 ; $3a
	TREASURE_3a_SUBID_00	db
.ende

.enum TREASURE_3b<<8 ; $3b
	TREASURE_3b_SUBID_00	db
.ende

.enum TREASURE_3c<<8 ; $3c
	TREASURE_3c_SUBID_00	db
.ende

.enum TREASURE_3d<<8 ; $3d
	TREASURE_3d_SUBID_00	db
.ende

.enum TREASURE_3e<<8 ; $3e
	TREASURE_3e_SUBID_00	db
.ende

.enum TREASURE_3f<<8 ; $3f
	TREASURE_3f_SUBID_00	db
.ende

.enum TREASURE_ESSENCE<<8 ; $40
	TREASURE_ESSENCE_SUBID_00	db
.ende

.enum TREASURE_TRADEITEM<<8 ; $41
	TREASURE_TRADEITEM_SUBID_00	db
.ende

.enum TREASURE_GRAVEYARD_KEY<<8 ; $42
	TREASURE_GRAVEYARD_KEY_SUBID_00	db
.ende

.enum TREASURE_CROWN_KEY<<8 ; $43
	TREASURE_CROWN_KEY_SUBID_00	db
.ende

.enum TREASURE_OLD_MERMAID_KEY<<8 ; $44
	TREASURE_OLD_MERMAID_KEY_SUBID_00	db
.ende

.enum TREASURE_MERMAID_KEY<<8 ; $45
	TREASURE_MERMAID_KEY_SUBID_00	db
.ende

.enum TREASURE_LIBRARY_KEY<<8 ; $46
	TREASURE_LIBRARY_KEY_SUBID_00	db
.ende

.enum TREASURE_47<<8 ; $47
	TREASURE_47_SUBID_00		db
.ende

.enum TREASURE_RICKY_GLOVES<<8 ; $48
	TREASURE_RICKY_GLOVES_SUBID_00	db
.ende

.enum TREASURE_BOMB_FLOWER<<8 ; $49
	TREASURE_BOMB_FLOWER_SUBID_00	db
.ende

.enum TREASURE_MERMAID_SUIT<<8 ; $4a
	TREASURE_MERMAID_SUIT_SUBID_00	db
.ende

.enum TREASURE_SLATE<<8 ; $4b
	TREASURE_SLATE_SUBID_00		db
.ende

.enum TREASURE_TUNI_NUT<<8 ; $4c
	TREASURE_TUNI_NUT_SUBID_00	db
	TREASURE_TUNI_NUT_SUBID_01	db
.ende

.enum TREASURE_SCENT_SEEDLING<<8 ; $4d
	TREASURE_SCENT_SEEDLING_SUBID_00	db
.ende

.enum TREASURE_ZORA_SCALE<<8 ; $4e
	TREASURE_ZORA_SCALE_SUBID_00	db
.ende

.enum TREASURE_TOKAY_EYEBALL<<8 ; $4f
	TREASURE_TOKAY_EYEBALL_SUBID_00	db
.ende

.enum TREASURE_EMPTY_BOTTLE<<8 ; $50
	TREASURE_EMPTY_BOTTLE_SUBID_00	db
.ende

.enum TREASURE_FAIRY_POWDER<<8 ; $51
	TREASURE_FAIRY_POWDER_SUBID_00	db
.ende

.enum TREASURE_CHEVAL_ROPE<<8 ; $52
	TREASURE_CHEVAL_ROPE_SUBID_00	db
.ende

.enum TREASURE_MEMBERS_CARD<<8 ; $53
	TREASURE_MEMBERS_CARD_SUBID_00	db
.ende

.enum TREASURE_ISLAND_CHART<<8 ; $54
	TREASURE_ISLAND_CHART_SUBID_00	db
.ende

.enum TREASURE_BOOK_OF_SEALS<<8 ; $55
	TREASURE_BOOK_OF_SEALS_SUBID_00	db
.ende

.enum TREASURE_56<<8 ; $56
	TREASURE_56_SUBID_00		db
.ende

.enum TREASURE_57<<8 ; $57
	TREASURE_57_SUBID_00		db
.ende

.enum TREASURE_58<<8 ; $58
	TREASURE_58_SUBID_00		db
.ende

.enum TREASURE_GORON_LETTER<<8 ; $59
	TREASURE_GORON_LETTER_SUBID_00	db
.ende

.enum TREASURE_LAVA_JUICE<<8 ; $5a
	TREASURE_LAVA_JUICE_SUBID_00	db
.ende

.enum TREASURE_BROTHER_EMBLEM<<8 ; $5b
	TREASURE_BROTHER_EMBLEM_SUBID_00	db
.ende

.enum TREASURE_GORON_VASE<<8 ; $5c
	TREASURE_GORON_VASE_SUBID_00	db
.ende

.enum TREASURE_GORONADE<<8 ; $5d
	TREASURE_GORONADE_SUBID_00	db
.ende

.enum TREASURE_ROCK_BRISKET<<8 ; $5e
	TREASURE_ROCK_BRISKET_SUBID_00	db
.ende

.enum TREASURE_5f<<8 ; $5f
	TREASURE_5f_SUBID_00		db
.ende

.endif ; ROM_AGES
