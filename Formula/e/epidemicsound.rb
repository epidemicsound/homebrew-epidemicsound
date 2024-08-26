class Epidemicsound < Formula
    desc "Devtools for EpidemicSound"
    homepage "https://www.epidemicsound.com"
    url "https://github.com/epidemicsound/homebrew-epidemicsound/archive/refs/tags/0.1.tar.gz"

    # Keep alphabetised
    depends_on "golang"

    def install
        bin.install "hello-epidemic.sh" => "hello-epidemic"
    end
  end
