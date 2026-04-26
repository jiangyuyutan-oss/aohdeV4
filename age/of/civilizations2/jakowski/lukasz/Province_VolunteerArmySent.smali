.class public Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;
.super Ljava/lang/Object;
.source "Province_VolunteerArmySent.java"


# instance fields
.field public TURN_ID:I

.field public army:I

.field public fromCivID:I

.field public toCivID:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "fromCivID"  # I
    .param p2, "toCivID"  # I
    .param p3, "army"  # I
    .param p4, "TURN_ID"  # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->fromCivID:I

    .line 6
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->toCivID:I

    .line 8
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->army:I

    .line 10
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->TURN_ID:I

    .line 13
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->fromCivID:I

    .line 14
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->toCivID:I

    .line 15
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->army:I

    .line 16
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Province_VolunteerArmySent;->TURN_ID:I

    .line 17
    return-void
.end method
