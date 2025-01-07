.class public final Lcom/google/android/gms/internal/zzeka;
.super Ljava/lang/Object;


# static fields
.field public static final zznjw:Lcom/google/android/gms/internal/zzeka;

.field public static final zznjx:Lcom/google/android/gms/internal/zzeka;


# instance fields
.field private final zznjy:Lcom/google/android/gms/internal/zzekb;

.field private final zznjz:Lcom/google/android/gms/internal/zzelr;

.field private final zznka:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    sget-object v1, Lcom/google/android/gms/internal/zzekb;->zznkb:Lcom/google/android/gms/internal/zzekb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeka;-><init>(Lcom/google/android/gms/internal/zzekb;Lcom/google/android/gms/internal/zzelr;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zznjw:Lcom/google/android/gms/internal/zzeka;

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    sget-object v1, Lcom/google/android/gms/internal/zzekb;->zznkc:Lcom/google/android/gms/internal/zzekb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeka;-><init>(Lcom/google/android/gms/internal/zzekb;Lcom/google/android/gms/internal/zzelr;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzeka;->zznjx:Lcom/google/android/gms/internal/zzeka;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzekb;Lcom/google/android/gms/internal/zzelr;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeka;->zznjy:Lcom/google/android/gms/internal/zzekb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeka;->zznjz:Lcom/google/android/gms/internal/zzelr;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzeka;->zznka:Z

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzelr;)Lcom/google/android/gms/internal/zzeka;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzeka;

    sget-object v1, Lcom/google/android/gms/internal/zzekb;->zznkc:Lcom/google/android/gms/internal/zzekb;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzeka;-><init>(Lcom/google/android/gms/internal/zzekb;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeka;->zznjy:Lcom/google/android/gms/internal/zzekb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeka;->zznjz:Lcom/google/android/gms/internal/zzelr;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeka;->zznka:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "OperationSource{source="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", queryParams="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tagged="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzu()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeka;->zznjy:Lcom/google/android/gms/internal/zzekb;

    sget-object v1, Lcom/google/android/gms/internal/zzekb;->zznkb:Lcom/google/android/gms/internal/zzekb;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbzv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeka;->zznka:Z

    return v0
.end method

.method public final zzbzw()Lcom/google/android/gms/internal/zzelr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeka;->zznjz:Lcom/google/android/gms/internal/zzelr;

    return-object v0
.end method
