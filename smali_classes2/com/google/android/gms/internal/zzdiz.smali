.class public final Lcom/google/android/gms/internal/zzdiz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzlay:Lcom/google/android/gms/internal/zzdim;

.field private final zzlby:Lcom/google/android/gms/internal/zzdid;

.field private final zzlbz:Lcom/google/android/gms/internal/zzdiy;

.field private final zzlca:Lcom/google/android/gms/internal/zzdiv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdid;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/zzdiy;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzdiy;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzdiv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzdiv;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdiz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdid;Lcom/google/android/gms/internal/zzdiy;Lcom/google/android/gms/internal/zzdiv;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdid;Lcom/google/android/gms/internal/zzdiy;Lcom/google/android/gms/internal/zzdiv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdiz;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdid;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdiz;->zzlay:Lcom/google/android/gms/internal/zzdim;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdiz;->zzlbz:Lcom/google/android/gms/internal/zzdiy;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdiz;->zzlca:Lcom/google/android/gms/internal/zzdiv;

    return-void
.end method

.method private final zzeh(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdiz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, " "

    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzdiz;->zzeh(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />"

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzdiz;->zzeh(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdiz;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const-string v1, "No network connectivity - Offline"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v0, v3, v3}, Lcom/google/android/gms/internal/zzdid;->zzo(II)V

    return-void

    :cond_4
    const-string v1, "Starting to load resource from Network."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzdiw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdiw;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdiz;->zzlca:Lcom/google/android/gms/internal/zzdiv;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdiz;->zzlay:Lcom/google/android/gms/internal/zzdim;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzdim;->zzbjt()Lcom/google/android/gms/internal/zzdia;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzdiv;->zzb(Lcom/google/android/gms/internal/zzdia;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Loading resource from "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    :try_start_1
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/zzdix;->zzne(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/zzdjb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x36

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "NetworkLoader: Error when loading resource from url: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzdal;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzdid;->zzo(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdix;->close()V

    return-void

    :catch_1
    :try_start_3
    const-string v2, "NetworkLoader: Error when loading resource for url: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/zzdid;->zzo(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    :goto_6
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v6, v3}, Lcom/google/android/gms/common/util/zzp;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzdid;->zzaa([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdix;->close()V

    return-void

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x42

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "NetworkLoader: Error when parsing downloaded resources from url: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdal;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/zzdid;->zzo(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdix;->close()V

    return-void

    :catch_3
    :try_start_6
    const-string v0, "NetworkLoader: No data was retrieved from the given url: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdiz;->zzlby:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/zzdid;->zzo(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdix;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdix;->close()V

    throw v0
.end method
