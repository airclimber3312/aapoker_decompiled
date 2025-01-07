.class public Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fA:Ljava/lang/String;

.field public fB:J

.field public fC:Z

.field public fD:Ljava/lang/String;

.field public fE:Ljava/lang/String;

.field public fF:I

.field public fG:I

.field public fH:I

.field public fI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fu:Ljava/lang/String;

.field public fv:J

.field public fw:J

.field public fx:J

.field public fy:J

.field public fz:J

.field public id:J

.field public processName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fB:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fC:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fD:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fG:I

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fI:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fJ:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fB:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fC:Z

    const-string v1, "unknown"

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fD:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fG:I

    iput v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fH:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fI:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fJ:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fu:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fx:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fy:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fz:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fB:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fC:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fD:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fG:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fH:I

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fI:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fJ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fF:I

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fu:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fB:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fC:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fD:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fG:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fI:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fJ:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fF:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fK:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
