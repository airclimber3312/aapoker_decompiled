.class public final Lcom/google/android/gms/common/util/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzgkk:[Ljava/lang/String;

.field private static zzgkl:Landroid/os/DropBoxManager;

.field private static zzgkm:Z

.field private static zzgkn:I

.field private static zzgko:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "java."

    const-string v1, "javax."

    const-string v2, "android."

    const-string v3, "com.android."

    const-string v4, "dalvik."

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzgkk:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzgkl:Landroid/os/DropBoxManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/util/zzg;->zzgkm:Z

    const/4 v1, -0x1

    sput v1, Lcom/google/android/gms/common/util/zzg;->zzgkn:I

    sput v0, Lcom/google/android/gms/common/util/zzg;->zzgko:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
