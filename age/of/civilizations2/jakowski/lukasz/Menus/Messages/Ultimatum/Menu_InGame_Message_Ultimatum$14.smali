.class Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$14;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Menu_InGame_Message_Ultimatum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;->actionEL(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;
    .param p2, "taskKey"  # Ljava/lang/String;
    .param p3, "id"  # I

    .line 505
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$14;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum;

    invoke-direct {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 509
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Messages/Ultimatum/Menu_InGame_Message_Ultimatum$14;->id:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->buildCivilizationRegions(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 512
    goto :goto_9

    .line 510
    :catch_8
    move-exception v0

    .line 513
    :goto_9
    return-void
.end method
