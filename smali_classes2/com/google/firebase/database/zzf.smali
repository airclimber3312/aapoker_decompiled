.class final Lcom/google/firebase/database/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmwj:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzmwn:Lcom/google/firebase/database/Transaction$Handler;

.field private synthetic zzmwo:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzf;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzf;->zzmwn:Lcom/google/firebase/database/Transaction$Handler;

    iput-boolean p3, p0, Lcom/google/firebase/database/zzf;->zzmwo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzf;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/zzf;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/firebase/database/zzf;->zzmwn:Lcom/google/firebase/database/Transaction$Handler;

    iget-boolean v3, p0, Lcom/google/firebase/database/zzf;->zzmwo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Z)V

    return-void
.end method
