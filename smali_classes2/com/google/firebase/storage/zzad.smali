.class final Lcom/google/firebase/storage/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzoxd:Lcom/google/android/gms/internal/zzfbn;

.field private synthetic zzoxe:Lcom/google/firebase/storage/UploadTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/android/gms/internal/zzfbn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzad;->zzoxe:Lcom/google/firebase/storage/UploadTask;

    iput-object p2, p0, Lcom/google/firebase/storage/zzad;->zzoxd:Lcom/google/android/gms/internal/zzfbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/zzad;->zzoxd:Lcom/google/android/gms/internal/zzfbn;

    iget-object v1, p0, Lcom/google/firebase/storage/zzad;->zzoxe:Lcom/google/firebase/storage/UploadTask;

    invoke-static {v1}, Lcom/google/firebase/storage/UploadTask;->zza(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfbh;->zzh(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/zzad;->zzoxe:Lcom/google/firebase/storage/UploadTask;

    invoke-static {v2}, Lcom/google/firebase/storage/UploadTask;->zza(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfbn;->zze(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
