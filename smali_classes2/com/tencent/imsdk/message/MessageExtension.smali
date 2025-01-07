.class public Lcom/tencent/imsdk/message/MessageExtension;
.super Ljava/lang/Object;
.source "MessageExtension.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extensionKey:Ljava/lang/String;

.field private extensionValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtensionKey()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageExtension;->extensionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageExtension;->extensionValue:Ljava/lang/String;

    return-object v0
.end method

.method public setExtensionKey(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageExtension;->extensionKey:Ljava/lang/String;

    return-void
.end method

.method public setExtensionValue(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageExtension;->extensionValue:Ljava/lang/String;

    return-void
.end method
