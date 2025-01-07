.class public Lcom/tencent/imsdk/conversation/ConversationAtInfo;
.super Ljava/lang/Object;
.source "ConversationAtInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AT_ALL_TAG:Ljava/lang/String; = "__kImSDK_MesssageAtALL__"

.field public static final TIM_AT_ALL:I = 0x2

.field public static final TIM_AT_ALL_AT_ME:I = 0x3

.field public static final TIM_AT_ME:I = 0x1

.field public static final TIM_AT_UNKNOWN:I


# instance fields
.field private atMessageSequence:J

.field private atTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->atTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addAtType(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->atTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAtMessageSequence()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->atMessageSequence:J

    return-wide v0
.end method

.method public getAtType()I
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->atTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return v1
.end method
