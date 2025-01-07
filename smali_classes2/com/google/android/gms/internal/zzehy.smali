.class final Lcom/google/android/gms/internal/zzehy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzehy;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzmxa:Lcom/google/android/gms/internal/zzegu;

.field private zzngm:Lcom/google/firebase/database/Transaction$Handler;

.field private zzngn:Lcom/google/firebase/database/ValueEventListener;

.field private zzngo:I

.field private zzngp:J

.field private zzngq:Z

.field private zzngr:Lcom/google/firebase/database/DatabaseError;

.field private zzngs:J

.field private zzngt:Lcom/google/android/gms/internal/zzenn;

.field private zzngu:Lcom/google/android/gms/internal/zzenn;

.field private zzngv:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehy;->zzngm:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehy;->zzngn:Lcom/google/firebase/database/ValueEventListener;

    iput p4, p0, Lcom/google/android/gms/internal/zzehy;->zzngo:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzehy;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzehy;->zzngq:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzehy;->zzngp:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngr:Lcom/google/firebase/database/DatabaseError;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngt:Lcom/google/android/gms/internal/zzenn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngu:Lcom/google/android/gms/internal/zzenn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngv:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/zzegy;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/zzehy;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehy;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngo:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehy;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngs:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngt:Lcom/google/android/gms/internal/zzenn;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngt:Lcom/google/android/gms/internal/zzenn;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngr:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzehy;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzehy;->zzngs:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngu:Lcom/google/android/gms/internal/zzenn;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzehy;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngo:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzngv:Lcom/google/android/gms/internal/zzenn;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzehy;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzehy;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzehy;->retryCount:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngu:Lcom/google/android/gms/internal/zzenn;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngv:Lcom/google/android/gms/internal/zzenn;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngm:Lcom/google/firebase/database/Transaction$Handler;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/ValueEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngn:Lcom/google/firebase/database/ValueEventListener;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngr:Lcom/google/firebase/database/DatabaseError;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzehy;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzehy;->retryCount:I

    return p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzehy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzehy;->zzngq:Z

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/zzehy;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzehy;->zzngp:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzehy;->zzngp:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
