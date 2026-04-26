.class Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$2;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Menu_InitGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;->loadAssets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 761
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 764
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->bPND()V

    .line 765
    return-void
.end method
