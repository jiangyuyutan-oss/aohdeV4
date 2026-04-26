.class Lage/of/civilizations2/jakowski/lukasz/TextB/Text$1;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Text;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    .line 43
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method
