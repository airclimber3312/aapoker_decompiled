.class public final Lcom/google/android/gms/internal/zzbju;
.super Ljava/lang/Object;


# instance fields
.field private final zzgmy:Lcom/google/android/gms/internal/zzfff;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfff;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbju;->zzgmy:Lcom/google/android/gms/internal/zzfff;

    return-void
.end method

.method private static zza(IJI)Lcom/google/android/gms/internal/zzfff;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfff;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzfff;->zzpkl:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/zzfff;->zzpkm:J

    packed-switch p0, :pswitch_data_0

    const-string p1, "Unknown trigger type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "AudioStateFenceStub"

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/zzfi;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpkf:I

    goto :goto_0

    :pswitch_1
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpke:I

    goto :goto_0

    :pswitch_2
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpkd:I

    goto :goto_0

    :pswitch_3
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpkc:I

    goto :goto_0

    :pswitch_4
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpkb:I

    goto :goto_0

    :pswitch_5
    iput p3, v0, Lcom/google/android/gms/internal/zzfff;->zzpka:I

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzaov()Lcom/google/android/gms/internal/zzbju;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbju;

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4, v1, v2, v3}, Lcom/google/android/gms/internal/zzbju;->zza(IJI)Lcom/google/android/gms/internal/zzfff;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbju;-><init>(Lcom/google/android/gms/internal/zzfff;)V

    return-object v0
.end method

.method public static zzaow()Lcom/google/android/gms/internal/zzbju;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbju;

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4, v1, v2, v3}, Lcom/google/android/gms/internal/zzbju;->zza(IJI)Lcom/google/android/gms/internal/zzfff;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbju;-><init>(Lcom/google/android/gms/internal/zzfff;)V

    return-object v0
.end method

.method public static zzco(I)Lcom/google/android/gms/internal/zzbju;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbju;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/internal/zzbju;->zza(IJI)Lcom/google/android/gms/internal/zzfff;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbju;-><init>(Lcom/google/android/gms/internal/zzfff;)V

    return-object v0
.end method


# virtual methods
.method public final zzaox()Lcom/google/android/gms/internal/zzfff;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbju;->zzgmy:Lcom/google/android/gms/internal/zzfff;

    return-object v0
.end method
