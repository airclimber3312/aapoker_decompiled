.class public Lcom/hyphenate/chat/EMCmdMessageBody;
.super Lcom/hyphenate/chat/EMMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMCmdMessageBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMCmdMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMCmdMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMCmdMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMCmdMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMCmdMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public action()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;->action()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverOnlineOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;->deliverOnlineOnly(Z)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeliverOnlineOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;->isDeliverOnlineOnly()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmd:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;->action()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMCmdMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACmdMessageBody;->action()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
