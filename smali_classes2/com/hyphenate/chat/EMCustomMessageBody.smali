.class public Lcom/hyphenate/chat/EMCustomMessageBody;
.super Lcom/hyphenate/chat/EMMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMCustomMessageBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMCustomMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMCustomMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMCustomMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMCustomMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMCustomMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public event()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->event()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->params()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->setEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->setParams(Ljava/util/Map;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMCustomMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->event()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
