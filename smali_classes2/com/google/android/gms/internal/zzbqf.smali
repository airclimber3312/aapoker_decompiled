.class final synthetic Lcom/google/android/gms/internal/zzbqf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/ChangeListener;


# instance fields
.field private final zzgwd:Lcom/google/android/gms/drive/events/OnChangeListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/events/OnChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqf;->zzgwd:Lcom/google/android/gms/drive/events/OnChangeListener;

    return-void
.end method

.method static zza(Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/drive/events/ChangeListener;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbqf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbqf;-><init>(Lcom/google/android/gms/drive/events/OnChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public final onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzgwd:Lcom/google/android/gms/drive/events/OnChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/OnChangeListener;->onChange(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    return-void
.end method
