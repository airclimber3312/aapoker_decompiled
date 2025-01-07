.class Lcom/tykj/aapk/sdk/IMServer$12$1;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer$12;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tykj/aapk/sdk/IMServer$12;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer$12;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$12$1;->this$1:Lcom/tykj/aapk/sdk/IMServer$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMMessage;)I
    .locals 3

    .line 700
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 697
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    check-cast p2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1, p2}, Lcom/tykj/aapk/sdk/IMServer$12$1;->compare(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMMessage;)I

    move-result p1

    return p1
.end method
