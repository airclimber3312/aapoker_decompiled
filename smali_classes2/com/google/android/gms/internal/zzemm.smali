.class public final Lcom/google/android/gms/internal/zzemm;
.super Ljava/lang/Object;


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final zzmzw:Lcom/google/android/gms/internal/zzemn;

.field private final zznnp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzemm;-><init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzemm;->zznnp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzemm;->prefix:Ljava/lang/String;

    return-void
.end method

.method private final varargs zzj(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzemm;->prefix:Ljava/lang/String;

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zzk(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzdyq;->zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final info(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    sget-object v1, Lcom/google/android/gms/internal/zzemo;->zznnr:Lcom/google/android/gms/internal/zzemo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemm;->zznnp:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzemm;->zzj(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzemn;->zzb(Lcom/google/android/gms/internal/zzemo;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final varargs zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/zzemm;->zzj(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzemm;->zzk(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    sget-object v1, Lcom/google/android/gms/internal/zzemo;->zznnq:Lcom/google/android/gms/internal/zzemo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemm;->zznnp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzemn;->zzb(Lcom/google/android/gms/internal/zzemo;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final zzcbu()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzemn;->zzbyh()Lcom/google/android/gms/internal/zzemo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemo;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zzemo;->zznnq:Lcom/google/android/gms/internal/zzemo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemo;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzemm;->zzj(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzemm;->zzk(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    sget-object v3, Lcom/google/android/gms/internal/zzemo;->zznnt:Lcom/google/android/gms/internal/zzemo;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzemm;->zznnp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzemn;->zzb(Lcom/google/android/gms/internal/zzemo;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzemm;->zzj(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    sget-object v1, Lcom/google/android/gms/internal/zzemo;->zznns:Lcom/google/android/gms/internal/zzemo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemm;->zznnp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzemn;->zzb(Lcom/google/android/gms/internal/zzemo;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
