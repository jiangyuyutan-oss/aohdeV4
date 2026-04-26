.class Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName$1;
.super Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;
.source "Editor_ProvinceName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;->keyDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;
    .param p2, "taskKey"  # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 42
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/PNM;->uDPN()V

    .line 44
    return-void
.end method
