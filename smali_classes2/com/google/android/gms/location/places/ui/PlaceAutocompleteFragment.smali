.class public Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;
.super Landroid/app/Fragment;


# instance fields
.field private zzizg:Landroid/view/View;

.field private zzizh:Landroid/view/View;

.field private zzizi:Landroid/widget/EditText;

.field private zzizj:Z

.field private zzizk:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzizl:Lcom/google/android/gms/location/places/AutocompleteFilter;

.field private zzizm:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizj:Z

    return p0
.end method

.method private final zzaxn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizh:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final zzaxo()V
    .locals 6

    const-string v0, "Could not open autocomplete activity"

    const-string v1, "Places"

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;-><init>(I)V

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizk:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->setBoundsBias(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizl:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->setFilter(Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->zzit(Ljava/lang/String;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->zzen(I)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/location/places/ui/zzb;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v3

    iput-boolean v4, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizj:Z

    const/16 v4, 0x76d5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    iget v4, v3, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v4

    :goto_0
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eq v4, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x76d6

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzaxo()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizj:Z

    const/16 v0, 0x76d5

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizm:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/gms/location/places/Place;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/location/places/Place;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getStatus(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizm:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/google/android/gms/R$layout;->place_autocomplete_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/google/android/gms/R$id;->place_autocomplete_search_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizg:Landroid/view/View;

    sget p2, Lcom/google/android/gms/R$id;->place_autocomplete_clear_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizh:Landroid/view/View;

    sget p2, Lcom/google/android/gms/R$id;->place_autocomplete_search_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/gms/location/places/ui/zzc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/location/places/ui/zzc;-><init>(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V

    iget-object p3, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizg:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizh:Landroid/view/View;

    new-instance p3, Lcom/google/android/gms/location/places/ui/zzd;

    invoke-direct {p3, p0}, Lcom/google/android/gms/location/places/ui/zzd;-><init>(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzaxn()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizg:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizh:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public setBoundsBias(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizk:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method public setFilter(Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizl:Lcom/google/android/gms/location/places/AutocompleteFilter;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizm:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzizi:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzaxn()V

    return-void
.end method
