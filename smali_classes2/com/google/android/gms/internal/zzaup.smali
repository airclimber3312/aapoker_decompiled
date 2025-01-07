.class public final Lcom/google/android/gms/internal/zzaup;
.super Ljava/lang/Object;


# instance fields
.field private zzegg:Lcom/google/android/gms/internal/zzaua;

.field private zzegh:J

.field private zzegi:I

.field private zzegj:Lcom/google/android/gms/internal/zzatx;

.field private zzegk:Z

.field private zzegl:I

.field private zzegm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaup;->zzegh:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaup;->zzegi:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaup;->zzegl:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaup;->zzegk:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzaup;->zzegm:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzatx;)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegj:Lcom/google/android/gms/internal/zzatx;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaua;)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegg:Lcom/google/android/gms/internal/zzaua;

    return-object p0
.end method

.method public final zzabr()Lcom/google/android/gms/internal/zzauo;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzauo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaup;->zzegg:Lcom/google/android/gms/internal/zzaua;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaup;->zzegh:J

    iget v4, p0, Lcom/google/android/gms/internal/zzaup;->zzegi:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaup;->zzegj:Lcom/google/android/gms/internal/zzatx;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzaup;->zzegk:Z

    iget v8, p0, Lcom/google/android/gms/internal/zzaup;->zzegl:I

    iget v9, p0, Lcom/google/android/gms/internal/zzaup;->zzegm:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzauo;-><init>(Lcom/google/android/gms/internal/zzaua;JILjava/lang/String;Lcom/google/android/gms/internal/zzatx;ZII)V

    return-object v10
.end method

.method public final zzas(Z)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegk:Z

    return-object p0
.end method

.method public final zzax(I)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegi:I

    return-object p0
.end method

.method public final zzay(I)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegm:I

    return-object p0
.end method

.method public final zzv(J)Lcom/google/android/gms/internal/zzaup;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaup;->zzegh:J

    return-object p0
.end method
