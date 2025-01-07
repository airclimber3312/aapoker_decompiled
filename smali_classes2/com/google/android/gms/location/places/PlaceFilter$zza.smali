.class public final Lcom/google/android/gms/location/places/PlaceFilter$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlaceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzivl:Z

.field private zzivr:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzivs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/location/places/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private zzivt:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzivr:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzivl:Z

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzivs:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzivt:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/PlaceFilter$zza;-><init>()V

    return-void
.end method
