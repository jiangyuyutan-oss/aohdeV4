.class public Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;
.super Ljava/lang/Object;
.source "Civilization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Civilization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiplomacyData"
.end annotation


# instance fields
.field public iCivID:I

.field public iTurnID:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Civilization;


# direct methods
.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Civilization;II)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Civilization;
    .param p2, "iCivID"  # I
    .param p3, "iTurnID"  # I

    .line 185
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->this$0:Lage/of/civilizations2/jakowski/lukasz/Civilization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iCivID:I

    .line 187
    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization$DiplomacyData;->iTurnID:I

    .line 188
    return-void
.end method
