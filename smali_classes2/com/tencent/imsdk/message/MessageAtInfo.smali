.class public Lcom/tencent/imsdk/message/MessageAtInfo;
.super Ljava/lang/Object;
.source "MessageAtInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AT_ALL_TAG:Ljava/lang/String; = "__kImSDK_MesssageAtALL__"


# instance fields
.field private atAll:I

.field private atUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtUserID()Ljava/lang/String;
    .locals 1

    .line 26
    iget v0, p0, Lcom/tencent/imsdk/message/MessageAtInfo;->atAll:I

    if-eqz v0, :cond_0

    const-string v0, "__kImSDK_MesssageAtALL__"

    .line 27
    iput-object v0, p0, Lcom/tencent/imsdk/message/MessageAtInfo;->atUserID:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageAtInfo;->atUserID:Ljava/lang/String;

    return-object v0
.end method

.method public setAtUserID(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "__kImSDK_MesssageAtALL__"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/tencent/imsdk/message/MessageAtInfo;->atAll:I

    goto :goto_0

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageAtInfo;->atUserID:Ljava/lang/String;

    :goto_0
    return-void
.end method
