.class Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "HolyRomanEmpire_GameData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->uniteHRE(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;
    .param p2, "taskKey"  # Ljava/lang/String;
    .param p3, "id"  # I

    .line 272
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-direct {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 275
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData$1;->id:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildCivilizationRegions(I)V

    .line 276
    return-void
.end method
