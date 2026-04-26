.class Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title$1;
.super Ljava/lang/Object;
.source "Button_Stats_Title.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;-><init>(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;

    .line 24
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 27
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;->getWidthE()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/Stats/Button_Stats_Title;->getTextWidthU()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
