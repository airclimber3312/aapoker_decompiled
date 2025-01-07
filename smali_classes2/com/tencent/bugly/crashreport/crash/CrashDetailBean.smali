.class public Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public K:Ljava/lang/String;

.field public Y:Z

.field public appChannel:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public fC:Z

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

.field public gU:J

.field public hf:J

.field public hg:J

.field public hh:J

.field public hotPatchNum:Ljava/lang/String;

.field public hu:Ljava/lang/String;

.field public id:J

.field public kE:J

.field public kF:Ljava/lang/String;

.field public kG:Z

.field public kH:I

.field public kI:Ljava/lang/String;

.field public kJ:Ljava/lang/String;

.field public kK:Ljava/lang/Boolean;

.field public kL:Z

.field public kM:Ljava/lang/String;

.field public kN:Ljava/lang/String;

.field public kO:Ljava/lang/String;

.field public kP:Ljava/lang/String;

.field public kQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public kR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public kS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public kT:Z

.field public kU:Ljava/lang/String;

.field public kV:Ljava/lang/String;

.field public kW:Ljava/lang/String;

.field public kX:Ljava/lang/String;

.field public kY:Ljava/lang/String;

.field public kZ:I

.field public la:Ljava/lang/String;

.field public lb:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public ld:[B

.field public le:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lf:Ljava/lang/String;

.field public lg:J

.field public lh:J

.field public li:J

.field public lj:J

.field public lk:J

.field public ll:J

.field public lm:J

.field public ln:J

.field public lo:Ljava/lang/String;

.field public lp:Ljava/lang/String;

.field public lq:Ljava/lang/String;

.field public lr:Ljava/lang/String;

.field public ls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lu:[B

.field public lv:Ljava/lang/String;

.field public lw:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public lx:Ljava/lang/String;

.field public ly:Z

.field public lz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public processName:Ljava/lang/String;

.field public type:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->id:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kI:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/proguard/dh;->ic:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kK:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kG:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kT:Z

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kH:I

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kY:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kZ:I

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lc:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lo:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lp:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lq:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ls:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lt:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lu:[B

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lw:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->id:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kI:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/proguard/dh;->ic:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kK:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kG:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kT:Z

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kH:I

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kY:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kZ:I

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lc:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lo:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lp:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lq:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ls:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lt:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lu:[B

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lw:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kK:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kG:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kT:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kZ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ls:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lu:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kK:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kG:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Y:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kT:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kZ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ls:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lu:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lz:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
