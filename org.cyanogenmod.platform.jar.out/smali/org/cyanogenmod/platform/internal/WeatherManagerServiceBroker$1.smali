.class Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;
.super Lcyanogenmod/weather/ICMWeatherManager$Stub;
.source "WeatherManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-direct {p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->cancelRequest(I)V

    return-void
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0}, Lcyanogenmod/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupCity(Lcyanogenmod/weather/RequestInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    return-void
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V

    return-void
.end method

.method public updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v0, p1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method
