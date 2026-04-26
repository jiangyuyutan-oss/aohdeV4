.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$1;
.super Ljava/lang/Object;
.source "TextDefault.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    .line 38
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method
