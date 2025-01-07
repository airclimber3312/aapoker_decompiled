.class public Lcom/hyphenate/chat/EMDeviceInfo;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMADeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMADeviceInfo;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/adapter/EMADeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMDeviceInfo;->emaObject:Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMDeviceInfo;->emaObject:Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMDeviceInfo;->emaObject:Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMDeviceInfo;->emaObject:Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method
