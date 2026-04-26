.class Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap$2;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Menu_LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;->loadMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Load/Menu_LoadMap;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 279
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->bPND()V

    .line 280
    return-void
.end method
